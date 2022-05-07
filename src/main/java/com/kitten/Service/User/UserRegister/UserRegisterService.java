package com.kitten.Service.User.UserRegister;

import com.kitten.Pojo.Users;

/**
 * @author 27213
 */
public interface UserRegisterService {

    /**
     * @param user
     * @return
     */
    boolean setRegisterUser(Users user);

    /**
     * @param account
     * @return
     */
    Users selectUser(String account);
}
