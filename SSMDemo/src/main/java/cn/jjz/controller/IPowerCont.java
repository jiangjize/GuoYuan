package cn.jjz.controller;

import cn.jjz.entity.IRP;
import cn.jjz.entity.Power;
import cn.jjz.service.IPowerService;
import cn.jjz.service.IRPService;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
@Controller
public class IPowerCont {
    @Resource(name = "IPowerService")
    IPowerService ipo;
    @Resource(name = "IRPService")
    IRPService irp;
    @ResponseBody
    @RequestMapping("/deletepow")
    public String deletepow(HttpServletRequest request){
        int rid= Integer.parseInt(request.getParameter("rid"));
        int pid= Integer.parseInt(request.getParameter("pid"));
       int i= irp.DeletePower(rid,pid);
        return  "ok";
    }
    @ResponseBody
    @RequestMapping("/addpow")
    public int addpow(HttpServletRequest request){
       int rid= Integer.parseInt(request.getParameter("rid"));
        int pid= Integer.parseInt(request.getParameter("pid"));
       int i= irp.AddPower(rid,pid);
        return i;
    }


    @ResponseBody
    @RequestMapping("/allpow")
    public Object allpow(HttpServletRequest request) {
        Gson gson = new Gson();
        //新的容器 保存有父子关系的权限
        List<Power> rootMenus = new ArrayList<Power>();
        //保存的是平级的权限集合  使用内存级别的手段，构造成有关系的权限集合
        List<Power> privilegeList = ipo.AllPower();
        for (Power item : privilegeList) {
            Power childMenu = item;
            int pid = childMenu.getS_pparent();
            if (pid == 0) {
                rootMenus.add(item);
            } else {
                for (Power innerMenu : privilegeList) {
                    Integer id = innerMenu.getS_pid();
                    if (id == pid) {
                        Power parentMenu = innerMenu;
                        parentMenu.getChildren().add(childMenu);
                        break;
                    }
                }
            }
        }

        String s = gson.toJson(rootMenus);
        return  s.replace("s_pname","text");
    }
}
