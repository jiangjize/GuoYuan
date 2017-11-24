package cn.jjz.controller;

import cn.jjz.entity.IRP;
import cn.jjz.entity.Power;
import cn.jjz.entity.Role;
import cn.jjz.service.IPowerService;
import cn.jjz.service.IRPService;
import cn.jjz.service.IRoleService;
import com.google.gson.Gson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
@Controller
public class IRoleCont {
    @Resource(name = "IRoleService")
    IRoleService iRoleService;
    @Resource(name = "IPowerService")
    IPowerService ipo;
    @Resource(name = "IRPService")
    IRPService irp;

     @RequestMapping("/queryro")
    public Object queryro(HttpServletRequest request){
         List<Role> list=iRoleService.queryRo();
         request.getSession().setAttribute("queryro",list);
         //获取角色权限信息
         List<IRP> iprlist=irp.GetAllInfo();
         request.setAttribute("iprlist",iprlist);
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
         request.setAttribute("rootmenus",rootMenus);

         return "page/queryrole";
     }

}
