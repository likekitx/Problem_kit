package com.kitten.Dao.Admin;

import com.kitten.Pojo.Admin;
import org.apache.ibatis.annotations.Param;

/**
 * @author 27213
 */
public interface AdminLoginMapper {
    /**
     * 获取管理员
     *
     * @param account
     * @param password
     * @return
     */
    Admin getAdminMapper(@Param("account") String account, @Param("password") String password);
}