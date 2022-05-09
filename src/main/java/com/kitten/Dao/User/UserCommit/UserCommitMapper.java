package com.kitten.Dao.User.UserCommit;

import com.kitten.Pojo.Users;

/**
 * @author 27213
 */
public interface UserCommitMapper {

    /**
     * @param user
     * @return
     */
    boolean commitGrade(Users user);

    /**
     * @param users
     * @return
     */
    long selectGrade(Users users);
}
