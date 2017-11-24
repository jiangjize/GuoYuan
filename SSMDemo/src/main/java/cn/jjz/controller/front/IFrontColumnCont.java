package cn.jjz.controller.front;

import cn.jjz.entity.IColumn;
import cn.jjz.entity.IZixun;
import cn.jjz.service.IColumnService;
import cn.jjz.service.IZixunService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by lenovo on 2017/11/15.
 */
@Controller
@RequestMapping("/IFrontColumn")
public class IFrontColumnCont {

    @Resource(name = "IColumnService")
    IColumnService icol;
    @Resource(name = "IZixunService")
    IZixunService izx;
    @RequestMapping("/LodingIndex")
    public String LodingColumn(HttpServletRequest request){
        request.getSession().removeAttribute("uli");
       String scod= request.getParameter("scod");
       //查询所有顶级栏目
        List<IColumn> list=icol.GetTopCol(0);
        request.getSession().setAttribute("ColumnList",list);
       if(scod==null){
           //当scod为null值时，进入首页
           return "qiantai/index";
       }else if(scod.equals("sy")){
           //当scod为sy值时，进入首页
           return "qiantai/index";
       }else if(scod.equals("xwzx")){
           List<IZixun> izxlist=izx.GetAllZixun();
           request.setAttribute("izxlist",izxlist);
           return "qiantai/newsInfo";
       }else if(scod.equals("hqqs")){
           return "qiantai/marketTrend";
       }else if(scod.equals("scsk")){
           return "qiantai/marketLive";
       }else if(scod.equals("jyzx")){
           return "qiantai/supplyInfo";
       }else if(scod.equals("dzbg")){
           return "qiantai/customReport";
       }else if(scod.equals("tzzx")){
           return "qiantai/investInfo";
       }else if(scod.equals("swxt")
               ){
           return "qiantai/businessSystem";
       }
        //当scod为其他值时，进入404
          return "qiantai/404";
    }
}
