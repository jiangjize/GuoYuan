package cn.jjz.service;

import cn.jjz.entity.IColumn;

import java.util.List;

/**
 * Created by lenovo on 2017/11/5.
 */
public interface IColumnService {
    //01.加载所有栏目
    public List<IColumn> GetAllCol();
    public List<IColumn> GetTopCol(int parent);
    //02.加载子栏目
    public List<IColumn> GetChildrenCol(int parent);
    //03.添加栏目
    public int AddCol(IColumn iColumn);
    //04.删除栏目
    public int DeleteCol(int id);
}
