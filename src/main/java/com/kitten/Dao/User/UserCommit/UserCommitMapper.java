package com.kitten.Dao.User.UserCommit;

import com.kitten.Pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * @author 27213
 */
public interface UserCommitMapper {

    /**
     * @param user
     * @return
     */
    boolean commitGrade(Users user);
}
