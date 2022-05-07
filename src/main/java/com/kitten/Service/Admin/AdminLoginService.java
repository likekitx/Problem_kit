package com.kitten.Service.Admin;

import com.kitten.Pojo.Admin;

/**
 * @author 27213
 */
public interface AdminLoginService {
    /**
     * 获取管理员
     * @param account
     * @param password
     * @return
     */
    Admin getAdminService(String account,String password);
}
