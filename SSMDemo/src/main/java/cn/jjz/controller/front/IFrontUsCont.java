package cn.jjz.controller.front;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import cn.jjz.entity.Us;
import cn.jjz.service.IUsService;
import cn.jjz.util.MailUtil;
import cn.jjz.util.SmsUtil;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by lenovo on 2017/11/15.
 */
@Controller
@RequestMapping("/IFrontUser")
public class IFrontUsCont {
    @Resource(name = "IUsService")
    private IUsService ius;

    /*登陆*/
    @RequestMapping("/Login")
    public String Login(HttpServletRequest request, Us us) {
        Us u = ius.Login(us);
        if (u != null && u.getS_uname() != null) {
            request.getSession().setAttribute("user", u);
            return "front";
        }
        return "qiantai/login";
    }

    /*注销*/
    @RequestMapping("/Zhuxiao")
    public String Zhuxiao(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "front";
    }

    /*修改密码最后步骤*/
    @RequestMapping("/UpdatePwd3")
    public String UpdatePwd1(Us us, HttpServletRequest request) {
        //异移除session中的用户
        ius.UpUser(us);
        request.getSession().removeAttribute("uli");
        request.getSession().removeAttribute("key");
        return "qiantai/forgot-pass3";
    }

    /*短信验证码的校验*/
    @RequestMapping("/UpdatePwd2")
    public String UpdatePwd2(Us us, HttpServletRequest request) {
        String y = request.getParameter("yanzhen");
        String y2 = request.getParameter("yzcode");
        System.out.println("......" + y + "..........." + y2);
        if (y.equals(y2)) { //相等则通过验证，进行下一步
            request.getSession().removeAttribute("vco");
            request.getSession().setAttribute("key","1");
            return "qiantai/forgot-pass2";
        }
        return "qiantai/forgot-infopass";
    }

    /*修改密码第一步，查询该用户，并将其信息放入session作用域中*/
    @RequestMapping("/selectus")
    public String SelectUs(Us us, HttpServletRequest request) {
        Us uli = ius.ByAccSelectUs(us.getS_uacc());
        if (uli != null) {
            request.getSession().setAttribute("uli", uli);
            return "qiantai/pass-select";
        }
        request.setAttribute("acc", us.getS_uacc());
        return "qiantai/forgot-pass";
    }

    /*修改密码----生成六位数验证码，为用户绑定手机号码发送短信验证码*/
    @ResponseBody
    @RequestMapping("/PwdUpdate")
    public String UpUser(Us us, HttpServletRequest request) throws ClientException, InterruptedException {
        SmsUtil s = new SmsUtil();
        //生成六位随机验证码
        String vcode = "";
        for (int i = 0; i < 6; i++) {
            vcode = vcode + (int) (Math.random() * 9);
        }
        request.getSession().setAttribute("vco", vcode);
        SendSmsResponse response = s.sendSms(us.getS_uphone(), vcode);
        System.out.println("短信接口返回的数据----------------");
        System.out.println("Message=" + response.getMessage());
        Thread.sleep(3000L);
        if (response.getCode() != null && response.getCode().equals("OK")) {
            QuerySendDetailsResponse querySendDetailsResponse = s.querySendDetails();
            System.out.println("短信明细查询接口返回数据----------------");
            System.out.println("Code=" + querySendDetailsResponse.getCode());
        }

        return vcode;
    }

    /*原密码修改*/
    @RequestMapping("/OldUpdatePwd")
    public String OldUpdatePwd(Us us, HttpServletRequest request) {
        Us z = (Us) request.getSession().getAttribute("uli");
        String oldpwd = request.getParameter("oldpwd");
        if (!z.getS_upwd().equals(oldpwd)) {
            request.setAttribute("olderr", "原密码错误，请重新输入");
            return "qiantai/forgot-oldpass";
        }
        us.setS_uid(z.getS_uid());
        ius.UpUser(us);
        request.getSession().removeAttribute("uli");
        return "qiantai/forgot-pass3";
    }
    /*邮箱修改密码*/
    @ResponseBody
    @RequestMapping("/EmailUpdatePwd")
    public String EmailUpdatePwd(Us us,HttpServletRequest request) throws MessagingException {
        MailUtil mailUtil=new MailUtil();
        String text = "";
        for (int i = 0; i < 6; i++) {
            text = text + (int) (Math.random() * 9);
        }


        Properties properties = new Properties();
        properties.put("mail.transport.protocol", "smtp");// 连接协议
        properties.put("mail.smtp.host", "smtp.qq.com");// 主机名
        properties.put("mail.smtp.port", 465);// 端口号
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.ssl.enable", "true");//设置是否使用ssl安全连接  ---一般都使用
        properties.put("mail.debug", "true");//设置是否显示debug信息  true 会在控制台显示相关信息
        //得到回话对象
        Session session = Session.getInstance(properties);
        // 获取邮件对象
        Message message = new MimeMessage(session);
        //设置发件人邮箱地址
        message.setFrom(new InternetAddress("2236632046@qq.com"));
        //设置收件人地址
        message.setRecipients(RecipientType.TO,new InternetAddress[] { new InternetAddress(us.getS_uemail()) });
        //设置邮件标题
        message.setSubject("来信了");
        //设置邮件内容
        message.setText("您的验证码是："+text+",或者就此处理：http://localhost:8080/jsp/qiantai/forgot-pass2.jsp");
        //得到邮差对象
        Transport transport = session.getTransport();
        //连接自己的邮箱账户
        transport.connect("2236632046@qq.com", "sjsadxrxtpdjebda");//密码为刚才得到的授权码
        //发送邮件
        transport.sendMessage(message, message.getAllRecipients());

        request.getSession().setAttribute("txid",text);
        request.getSession().setAttribute("key","2");
       /* mailUtil.SeteMail(us.getS_uemail(),text,"http://localhost:8080/IFrontUser/OldUpdatePwd");*/
        return text;
    }

}
