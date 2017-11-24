package cn.jjz.service.impl;

import cn.jjz.dao.IRoleDao;
import cn.jjz.service.IRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by lenovo on 2017/10/30.
 */
@Service("IRoleService")
public class IRoleServiceImpl implements IRoleService {
    @Resource(name = "IRoleDao")
    IRoleDao iRoleDao;
    public List queryRo() {
        return iRoleDao.queryRo();
    }
}
