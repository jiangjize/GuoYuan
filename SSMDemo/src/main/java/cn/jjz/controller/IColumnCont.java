package cn.jjz.controller;


import cn.jjz.entity.IColumn;
import cn.jjz.entity.IZixun;
import cn.jjz.service.IColumnService;
import cn.jjz.service.IZixunService;
import cn.jjz.util.HtmlText;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
 * Created by lenovo on 2017/11/1.
 */
@Controller
public class IColumnCont {
    @Resource(name = "IColumnService")
    IColumnService icol;
    @Resource(name = "IZixunService")
    IZixunService izx;

    @RequestMapping("/a")
    public String a(HttpServletRequest request) {
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
        List<IZixun> iZixuns = izx.GetAllZixun();
        request.getSession().setAttribute("izixun", iZixuns);
        request.setAttribute("rlist", rootcol);
        return "page/columnlist";
    }

    @RequestMapping("/fileup")
    public String fileup(HttpSession session, HttpServletRequest request, MultipartFile multipartFile) throws ParseException {
        String p = session.getServletContext().getRealPath("/upload");
        String name = multipartFile.getOriginalFilename();
        HtmlText h = new HtmlText();
        IZixun iZixun = new IZixun();
        iZixun.setS_gnclick(0); //点击量  刚开始都是0
        String scid = request.getParameter("scid");
        int cid = Integer.parseInt(scid.trim());
        iZixun.setS_cid(cid); //所属栏目
       int sta=Integer.parseInt(request.getParameter("s_gnstatus"));
        if(sta==1) {
            iZixun.setS_gnstatus(1); //状态  既然是发布进入的该方法  则直接给上1了 也就是发布状态
        }else {
            iZixun.setS_gnstatus(2);
        }
        iZixun.setS_gntcolor(Integer.parseInt(request.getParameter("s_gntcolor"))); //标题颜色
        iZixun.setS_gncreator(Integer.parseInt(request.getParameter("s_gncreator")));   //创建者  当前登录的用户ID
        String to = request.getParameter("s_gncreator");
        int too = Integer.parseInt(to.trim());
        iZixun.setS_gncreator(too);
        iZixun.setS_gnretimes(new Date());  //创建的时间  更改时间
        String zw = request.getParameter("s_gnzhengwen"); //获取正文
        String a1 = h.Html2Text(zw);  //获取正文的纯文本
        iZixun.setS_gnzhengwen(zw);      //将纯文本放入正文
        String img = request.getParameter("multipartFile");
        iZixun.setS_gnimage(name);
        iZixun.setS_gntitle(request.getParameter("s_gntitle")); //标题
        iZixun.setS_gnzhaiyao(request.getParameter("s_gnzhaiyao")); //摘要
        iZixun.setS_gncrux(request.getParameter("s_gncrux")); //关键字
        File file = new File(p, name);
        try {
            multipartFile.transferTo(file);
            int i = izx.AddZixun(iZixun);
            return a(request);
        } catch (IOException e) {
            e.printStackTrace();
            return "shibai";
        }
    }

    @RequestMapping("/zxupdate")
    public String zxupdate(HttpServletRequest request,HttpSession session,IZixun iZixun,MultipartFile multipartFile){
        String p = session.getServletContext().getRealPath("/upload");
        String name = multipartFile.getOriginalFilename();
        String sta=request.getParameter("s_gnstatus");  //获取前台传来的status 1是修改  2是发布
        //如果sta等于2 就让status的值为1 从草稿状态变为发布状态
        if(sta!="2"){
            iZixun.setS_gnstatus(1);
        }
        if (name!=null||name!=""){
        iZixun.setS_gnimage(name);
            File file = new File(p, name);
            try {
                multipartFile.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        izx.UpdateZixun(iZixun);
        return a(request);
    }
    @RequestMapping("/addgnzx")
    public String addgnzx(HttpServletRequest request){
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
        request.setAttribute("user",request.getSession().getAttribute("user"));;
        request.setAttribute("rlist", rootcol);
        return "page/addgnzx";
    }

    @RequestMapping("/addcol")
    public String Addcol(HttpServletRequest request) {
        IColumn column = new IColumn();
        column.setS_cname(request.getParameter("s_cname"));
        column.setS_cparent(Integer.parseInt(request.getParameter("s_cparent")));
        icol.AddCol(column);
        return lanmushezhi(request);

    }

    @RequestMapping("/deletecol")
    public String deletecol(HttpServletRequest request) {
        int i = Integer.parseInt(request.getParameter("id"));
        icol.DeleteCol(i);
        return lanmushezhi(request);
    }

    @RequestMapping("/lanmu")
    public String lanmushezhi(HttpServletRequest request) {
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
        request.setAttribute("clist", rootcol);
        return "page/columnsetup";
    }
}
