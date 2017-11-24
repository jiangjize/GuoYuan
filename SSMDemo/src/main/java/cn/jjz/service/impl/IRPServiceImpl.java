package cn.jjz.service.impl;

import cn.jjz.dao.IRPDao;
import cn.jjz.entity.IRP;
import cn.jjz.service.IRPService;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/11/4.
 */
@Service("IRPService")
public class IRPServiceImpl implements IRPService {
    @Resource(name = "IRPDao")
    private IRPDao irpDao;

    public List<IRP> GetAllInfo() {
        return irpDao.GetAllInfo();
    }

    public int DeletePower(int s_rid, int s_pid) {
        int i=irpDao.DeletePower(s_rid,s_pid);
        return i;
    }

    public int AddPower(int s_rid, int s_pid) {
       int i= irpDao.AddPower(s_rid,s_pid);
        return i;
    }
}
