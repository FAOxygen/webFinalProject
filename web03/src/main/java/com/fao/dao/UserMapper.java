package com.fao.dao;

import com.fao.pojo.User;

import java.util.List;

public interface UserMapper {
    int addUser(User user);

    int delUserByName(int id);

    int updateUser(User user);

    User querUserByName(String name);

    List<User> querAllUser();
}
