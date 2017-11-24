package cn.jjz.util;


import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;



public class MailUtil {
                         //发送的qq邮件地址       标题         内容         处理链接
	public void SeteMail(String qqemail,String test,String addurl) throws MessagingException {
		Properties properties = new Properties();
		properties.put("MailUtil.transport.protocol", "smtp");// 连接协议
		properties.put("MailUtil.smtp.host", "smtp.qq.com");//  主机名
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
		System.out.println(qqemail+".."+test+"...."+addurl);
		message.setRecipients(RecipientType.TO,new InternetAddress[] { new InternetAddress(qqemail) });
		//设置邮件标题
		message.setSubject("嘿，Jz来信了");
		//设置邮件内容
		message.setText("您的验证码为："+test+"请妥善保管,或者就此处理：");
		//得到邮差对象
		Transport transport = session.getTransport();
		//连接自己的邮箱账户
		transport.connect("2236632046@qq.com", "sjsadxrxtpdjebda");//密码为刚才得到的授权码
		//发送邮件
		transport.sendMessage(message, message.getAllRecipients());
	}


}
