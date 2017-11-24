package cn.jjz.service.impl;

import cn.jjz.dao.IPowerDao;
import cn.jjz.entity.Power;
import cn.jjz.service.IPowerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/10/27.
 */
@Service("IPowerService")
public class IPowerServiceImpl implements IPowerService {
    @Resource(name = "IPowerDao")
    private IPowerDao iPowerDao;

    public List<Power> ByUserIdgetAllPower(int s_uid) {
        return iPowerDao.ByUserIdgetAllPower(s_uid);
    }

    public List<Power> ZiMenu(int s_pid) {
        return iPowerDao.ZiMenu(s_pid);
    }

    public List<Power> AllPower() {
        return iPowerDao.AllPower();
    }

    public int DeletePower(int s_rid,int s_pid) {
       return iPowerDao.DeletePower(s_rid,s_pid);
    }

    public int AddPower(int s_rid, int s_pid) {
       return iPowerDao.AddPower(s_rid,s_pid);
    }
}
