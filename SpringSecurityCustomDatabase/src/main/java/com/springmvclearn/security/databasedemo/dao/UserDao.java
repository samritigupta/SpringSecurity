package com.springmvclearn.security.databasedemo.dao;

import com.springmvclearn.security.databasedemo.entity.User;

public interface UserDao {
    User findByUserName(String userName);
    void save(User user);
}
