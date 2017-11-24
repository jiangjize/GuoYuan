package cn.jjz.dao;

import cn.jjz.entity.IZixun;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/11/6.
 */
public interface IZixunDao {
    //01.获取所有资讯
    public List<IZixun> GetAllZixun();
    //02.添加资讯
    public int AddZixun(IZixun iZixun);
    //03.删除资讯
    public int DeleteZixun(@Param("s_gnid") int id);
    //04.编辑
    public int UpdateZixun(IZixun iZixun);
    //05.按标题关键字查询资讯
    public List<IZixun> ByTitleSelectZixun(@Param("s_gncrux") String title);
    //06.按国内资讯ID查询出该信息
    public IZixun ByIdSelect(@Param("s_gnid") int id);
}
