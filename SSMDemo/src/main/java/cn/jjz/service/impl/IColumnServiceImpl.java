package cn.jjz.service.impl;

import cn.jjz.dao.IColumnDao;
import cn.jjz.entity.IColumn;
import cn.jjz.service.IColumnService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.naming.Name;
import java.util.List;

/**
 * Created by lenovo on 2017/11/5.
 */
@Service("IColumnService")
public class IColumnServiceImpl implements IColumnService {
    @Resource(name = "IColumnDao")
    IColumnDao iColumnDao;

    public List<IColumn> GetAllCol() {
        return iColumnDao.GetAllCol();
    }

    public List<IColumn> GetTopCol(int parent) {
        return iColumnDao.GetTopCol(parent);
    }

    public List<IColumn> GetChildrenCol(int parent) {
        return iColumnDao.GetChildrenCol(parent);
    }

    public int AddCol(IColumn iColumn) {
        return iColumnDao.AddCol(iColumn);
    }

    public int DeleteCol(int id) {
        return iColumnDao.DeleteCol(id);
    }
}
