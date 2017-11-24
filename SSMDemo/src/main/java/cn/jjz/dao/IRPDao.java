package cn.jjz.dao;

import cn.jjz.entity.IRP;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/11/4.
 */
public interface IRPDao {
    //获取该表所有信息
    public List<IRP> GetAllInfo();
    //移除指定的权限
    public int DeletePower(@Param("s_rid") int s_rid,@Param("s_pid") int s_pid);
    //开启指定的权限
    public int AddPower(@Param("s_rid") int s_rid,@Param("s_pid") int s_pid);
}
