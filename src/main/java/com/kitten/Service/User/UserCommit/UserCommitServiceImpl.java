package com.kitten.Service.User.UserCommit;

import com.kitten.Dao.User.UserCommit.UserCommitMapper;
import com.kitten.Pojo.Users;
import com.kitten.Util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

public class UserCommitServiceImpl implements UserCommitService {
    /**
     * @param user
     * @return
     */
    @Override
    public boolean commitGrade(Users user) {
        SqlSession sqlSession = MyBatisUtil.getSqlSession();
        UserCommitMapper mapper = sqlSession.getMapper(UserCommitMapper.class);
        boolean b = mapper.commitGrade(user);
        sqlSession.commit();
        sqlSession.close();
        return b;
    }
}
