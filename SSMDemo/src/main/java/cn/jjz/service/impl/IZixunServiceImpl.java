package cn.jjz.service.impl;

import cn.jjz.dao.IZixunDao;
import cn.jjz.entity.IZixun;
import cn.jjz.service.IZixunService;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/11/6.
 */
@Service("IZixunService")
public class IZixunServiceImpl implements IZixunService{
  @Resource(name = "IZixunDao")
    IZixunDao iZixunDao;
    public List<IZixun> GetAllZixun() {
        return iZixunDao.GetAllZixun();
    }

    public int AddZixun(IZixun iZixun) {
        return iZixunDao.AddZixun(iZixun);
    }

    public int DeleteZixun(@Param("s_gnid") int id) {
        return iZixunDao.DeleteZixun(id);
    }

    public int UpdateZixun(IZixun iZixun) {
        return iZixunDao.UpdateZixun(iZixun);
    }

    public List<IZixun> ByTitleSelectZixun(@Param("s_gncrux") String title) {
        return iZixunDao.ByTitleSelectZixun(title);
    }

    public IZixun ByIdSelect(@Param("s_gnid") int id) {
        return iZixunDao.ByIdSelect(id);
    }
}
