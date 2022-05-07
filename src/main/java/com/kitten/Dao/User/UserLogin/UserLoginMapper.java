package com.kitten.Dao.User.UserLogin;

import com.kitten.Pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * @author 27213
 */
public interface UserLoginMapper {
    /**
     * @param account
     * @param password
     * @return
     */
    Users getUserLogin(@Param("account") String account, @Param("password") String password);
}
