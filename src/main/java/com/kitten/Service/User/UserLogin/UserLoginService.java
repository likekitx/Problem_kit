package com.kitten.Service.User.UserLogin;

import com.kitten.Pojo.Users;

/**
 * @author 27213
 */
public interface UserLoginService {
    /**
     * @param account
     * @param password
     * @return
     */
    Users getUserLogin(String account,String password);
}
