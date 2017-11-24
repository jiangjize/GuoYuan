package cn.jjz.dao;

import cn.jjz.entity.Power;

import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
public interface IPowerDao {
    //01.根据    用户编号  获取所有  【权限】
    public List<Power> ByUserIdgetAllPower(int s_uid);
    //02.加载子菜单
    public List<Power> ZiMenu(int s_pid);
    //03.加载所有的权限
    public List<Power> AllPower();
    //04.移除指定的权限
    public int DeletePower(int s_rid,int s_pid);
    //05.开启指定的权限
    public int AddPower(int s_rid,int s_pid);
}
