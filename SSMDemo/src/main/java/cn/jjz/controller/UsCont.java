package cn.jjz.controller;

import cn.jjz.entity.Power;
import cn.jjz.entity.Us;
import cn.jjz.service.IPowerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2017/10/16.
 */
@Controller
public class UsCont {
    @Resource(name = "IUsService")
    private cn.jjz.service.IUsService IUsService;
    @Resource(name = "IPowerService")
    IPowerService ipo;

    @RequestMapping("/Login")
    public String log(Us us, HttpServletRequest request) {
        Us u = IUsService.Login(us);
        request.getSession().setAttribute("user", u);
        if (u != null && u.getS_uname() != null) {
            ///根据  用户编号  获取所有  【权限】
            List<Power> parentMenu = ipo.ByUserIdgetAllPower(u.getS_uid());//2
            //创建临时子菜单
            List<Power> TempChildMenu = new ArrayList<Power>();
            //装载并遍历父菜单
            for (Power parent_menu : parentMenu) {   ///所有主的
                Power childMenu = parent_menu;
                //获取数据库所有相应的子菜单
                int id = childMenu.getS_pparent();
                if (id == 0) {                                  //1  4   7  10
                    TempChildMenu.add(parent_menu);   //将所有的主菜单放进TempChildMenu

                }
                for (Power zi_menu : parentMenu) {
                    int pid = zi_menu.getS_pid();
                    if (pid == id) {
                        Power pm = zi_menu;
                        pm.getChildren().add(childMenu);
                    }
                }

            }

            request.getSession().setAttribute("powerlist", TempChildMenu);
            return "index";
        } else {
            return "login";
        }
    }

    @RequestMapping("/Logon")
    public String Login(Us us, HttpServletRequest request) {
        Us u = IUsService.Login(us);
        request.getSession().setAttribute("user", u);
        System.out.println("================");
        if (u != null && u.getS_uname() != null) {
            ///根据  用户编号  获取所有  【权限】
            List<Power> parentMenu = ipo.ByUserIdgetAllPower(u.getS_uid());
            //创建结果菜单menuList
            Map<Power, List<Power>> menuList = new HashMap<Power, List<Power>>();
            //创建临时子菜单
            List<Power> TempChildMenu = null;
            //装载并遍历父菜单
            for (Power parent_menu : parentMenu) {
                //获取数据库所有相应的子菜单
                int id = parent_menu.getS_pid();
                List<Power> childMenu = ipo.ZiMenu(id);
                TempChildMenu = new ArrayList<Power>();
                //遍历父菜单，遍历过程通过判断，再遍历筛选子菜单
                for (Power child_menu : childMenu) {
                    //装载子菜单
                    TempChildMenu.add(child_menu);
                    //查看子菜单下是否有子菜单
                    int id2 = child_menu.getS_pid();
                    if (id2 > 0) {
                        List<Power> childMenu2 = ipo.ZiMenu(id2);
                        for (Power child_menu2 : childMenu2) {
                            TempChildMenu.add(child_menu2);
                        }
                    }
                }
                //装载父菜单
                menuList.put(parent_menu, TempChildMenu);
            }

            request.getSession().setAttribute("powerlist", menuList);
            return "index";
        } else {
            return "login";
        }
    }

    @RequestMapping("/queryus")
    public Object queryus(HttpServletRequest request) {

        List<Us> l = IUsService.queryAllUser();
        request.getSession().setAttribute("qus", l);
        return l;
    }
}
