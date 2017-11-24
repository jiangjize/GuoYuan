package cn.jjz.dao;

import cn.jjz.entity.Us;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/10/16.
 */
public interface IUsDao {
    /*登陆*/
    public Us Login(Us us);
    /*查询所有用户*/
    public List queryAllUser();
    /*修改密码*/
    public void UpUser(Us us);
    /*根据账号查询用户*/
    public Us ByAccSelectUs(@Param("s_uacc")String acc);
}
