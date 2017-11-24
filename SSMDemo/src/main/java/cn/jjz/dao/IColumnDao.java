package cn.jjz.dao;

import cn.jjz.entity.IColumn;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lenovo on 2017/11/5.
 */
public interface IColumnDao {
    //01.加载所有栏目
    public List<IColumn> GetAllCol();
    //02.加载顶级栏目
    public List<IColumn> GetTopCol(@Param("s_cparent") int parent);
    //02.加载子栏目
    public List<IColumn> GetChildrenCol(int parent);
    //03.添加栏目
    public int AddCol(IColumn iColumn);
    //04.删除栏目
    public int DeleteCol(int id);
    //05.修改栏目
    public int UpdateCol();
}
