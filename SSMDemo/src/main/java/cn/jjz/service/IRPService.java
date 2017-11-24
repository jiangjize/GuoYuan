package cn.jjz.service;

import cn.jjz.entity.IRP;

import java.util.List;

/**
 * Created by lenovo on 2017/11/4.
 */
public interface IRPService {
    //获取该表所有信息
    public List<IRP> GetAllInfo();
    //04.移除指定的权限
    public int DeletePower(int s_rid,int s_pid);
    //05.开启指定的权限
    public int AddPower(int s_rid,int s_pid);
}
