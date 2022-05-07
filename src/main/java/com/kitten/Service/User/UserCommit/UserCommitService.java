package com.kitten.Service.User.UserCommit;

import com.kitten.Pojo.Users;

/**
 * @author 27213
 */
public interface UserCommitService {

    /**
     * @param user
     * @return
     */
    boolean commitGrade(Users user);
}
