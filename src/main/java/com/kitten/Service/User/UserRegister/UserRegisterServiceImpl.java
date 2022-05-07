package com.kitten.Service.User.UserRegister;

import com.kitten.Dao.User.UserRegister.UserRegisterMapper;
import com.kitten.Pojo.Users;
import com.kitten.Util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @author 27213
 */
public class UserRegisterServiceImpl implements UserRegisterService{
    @Override
    public boolean setRegisterUser(Users user) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        UserRegisterMapper mapper = sqlSession.getMapper(UserRegisterMapper.class);
        boolean b = mapper.setRegisterUser(user);
        sqlSession.commit();
        sqlSession.close();
        return b;
    }

    @Override
    public Users selectUser(String account) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        UserRegisterMapper mapper = sqlSession.getMapper(UserRegisterMapper.class);
        Users b = mapper.selectUser(account);
        sqlSession.close();
        return b;
    }
}
