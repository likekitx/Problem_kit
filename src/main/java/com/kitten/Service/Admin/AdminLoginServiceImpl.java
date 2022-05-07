package com.kitten.Service.Admin;

import com.kitten.Dao.Admin.AdminLoginMapper;
import com.kitten.Pojo.Admin;
import com.kitten.Util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @author 27213
 */
public class AdminLoginServiceImpl implements AdminLoginService{
    @Override
    public Admin getAdminService(String account, String password) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        AdminLoginMapper mapper = sqlSession.getMapper(AdminLoginMapper.class);
        Admin adminMapper = mapper.getAdminMapper(account, password);
        sqlSession.close();
        return adminMapper;
    }
}
