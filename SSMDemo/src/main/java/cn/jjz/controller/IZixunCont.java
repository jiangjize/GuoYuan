package cn.jjz.controller;

import cn.jjz.entity.IColumn;
import cn.jjz.entity.IZixun;
import cn.jjz.service.IColumnService;
import cn.jjz.service.IZixunService;
import cn.jjz.util.HtmlText;
import org.springframework.jdbc.core.SqlReturnResultSet;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lenovo on 2017/11/6.
 */
@Controller
public class IZixunCont {
    @Resource(name = "IZixunService")
    IZixunService izx;
    @Resource(name = "IColumnService")
    IColumnService icol;

    @ResponseBody
    @RequestMapping("/allzixun")
    public Object allzixun(HttpServletRequest request) {
        List<IZixun> izxlist = izx.GetAllZixun();
        return izxlist;
    }

    @RequestMapping("/bytitleselect")
    public String ByTitleSelect(HttpServletRequest request) {
        String tit = request.getParameter("title");
        List<IZixun> l = izx.ByTitleSelectZixun(tit);

        //用来存放主、子栏目的集合
        List<IColumn> rootcol = new ArrayList<IColumn>();
        ///取到所有的栏目  然后根据栏目的parent来分主、子栏目
        List<IColumn> collist = icol.GetAllCol();
        for (IColumn all : collist) {
            IColumn zi = all;
            int parentid = zi.getS_cparent();
            if (parentid == 0)
                rootcol.add(all);
            else
                for (IColumn chi : collist) {
                    int cid = chi.getS_cid();
                    if (cid == parentid) {
                        IColumn a = chi;
                        a.getChildren().add(zi);
                        break;
                    }

                }
        }
        request.setAttribute("rlist", rootcol);
        request.setAttribute("ti", tit);
        request.setAttribute("izixun", l);
        return "/page/columnlist";
    }

    @RequestMapping("/zxupdatejsp")
    public String zxupdatejsp(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
       IZixun iZixun= izx.ByIdSelect(id);
        //用来存放主、子栏目的集合
        List<IColumn> rootcol = new ArrayList<IColumn>();
        ///取到所有的栏目  然后根据栏目的parent来分主、子栏目
        List<IColumn> collist = icol.GetAllCol();
        for (IColumn all : collist) {
            IColumn zi = all;
            int parentid = zi.getS_cparent();
            if (parentid == 0)
                rootcol.add(all);
            else
                for (IColumn chi : collist) {
                    int cid = chi.getS_cid();
                    if (cid == parentid) {
                        IColumn a = chi;
                        a.getChildren().add(zi);
                        break;
                    }

                }
        }
        request.setAttribute("user",request.getSession().getAttribute("user"));
        request.setAttribute("rlist", rootcol);
       request.setAttribute("iz",iZixun);
        return "/page/upgnzx";
    }


    @RequestMapping("/addzixun")
    public Object AddZixun(HttpServletRequest request) throws ParseException {
        HtmlText h = new HtmlText();
        IZixun iZixun = new IZixun();

        iZixun.setS_gnclick(0); //点击量  刚开始都是0
        iZixun.setS_cid(2); //因为是国内的资讯  所有直接就默认为2  也就是国内资讯
        iZixun.setS_gnstatus(1); //状态  既然是发布进入的该方法  则直接给上1了 也就是发布状态
        iZixun.setS_gntcolor(Integer.parseInt(request.getParameter("s_gntcolor"))); //标题颜色
      /*  iZixun.setS_gncreator(Integer.parseInt(request.getParameter("s_gncreator")));   //创建者  当前登录的用户ID*/
        int to = Integer.parseInt(request.getParameter("s_gncreator"));
        iZixun.setS_gncreator(to);
        iZixun.setS_gnretimes(new Date());  //创建的时间  更改时间
        String zw = request.getParameter("s_gnzhengwen"); //获取正文
        String a1 = h.Html2Text(zw);  //获取正文的纯文本
        iZixun.setS_gnzhengwen(zw);      //将纯文本放入正文
        String img = request.getParameter("multipartFile");
        iZixun.setS_gnimage(img);
        iZixun.setS_gntitle(request.getParameter("s_gntitle")); //标题
        iZixun.setS_gnzhaiyao(request.getParameter("s_gnzhaiyao")); //摘要
        iZixun.setS_gncrux(request.getParameter("s_gncrux")); //关键字
        int i = izx.AddZixun(iZixun);
        if (i > 0)
            return ByTitleSelect(request);
        else
            return "page/addgnzx";

    }

    @ResponseBody
    @RequestMapping("/deletezixun")
    public Object DeleteZixun(HttpServletRequest request) {
        int i = izx.DeleteZixun(Integer.parseInt(request.getParameter("id")));
        return i;


    }
}
