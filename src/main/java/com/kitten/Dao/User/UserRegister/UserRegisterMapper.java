package com.kitten.Dao.User.UserRegister;

import com.kitten.Pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * @author 27213
 */
public interface UserRegisterMapper {

    /**
     * @param user
     * @return
     */
    boolean setRegisterUser(Users user);

    /**
     * @param account
     * @return
     */
    Users selectUser(@Param("account") String account);
}
