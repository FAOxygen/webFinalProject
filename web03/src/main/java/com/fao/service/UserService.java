package com.fao.service;

import com.fao.pojo.User;

import java.util.List;

public interface UserService {
    int addUser(User user);

    int delUserById(int id);

    int updateUser(User user);

    User querUserByName(String name);

    List<User> querAllUser();
}
