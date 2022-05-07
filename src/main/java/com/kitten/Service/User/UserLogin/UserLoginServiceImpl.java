package com.kitten.Service.User.UserLogin;

import com.kitten.Dao.User.UserLogin.UserLoginMapper;
import com.kitten.Pojo.Users;
import com.kitten.Util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @author 27213
 */
public class UserLoginServiceImpl implements UserLoginService{
    @Override
    public Users getUserLogin(String account, String password) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        UserLoginMapper mapper = sqlSession.getMapper(UserLoginMapper.class);
        Users userLogin = mapper.getUserLogin(account, password);
        sqlSession.close();
        return userLogin;
    }
}
