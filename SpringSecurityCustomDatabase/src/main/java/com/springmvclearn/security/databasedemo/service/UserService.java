package com.springmvclearn.security.databasedemo.service;

import com.springmvclearn.security.databasedemo.entity.User;
import com.springmvclearn.security.databasedemo.user.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    User findByUserName(String userName);
    void save(CrmUser crmUser);
}
