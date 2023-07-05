package com.fao.service;

import com.fao.dao.UserMapper;
import com.fao.pojo.User;

import java.util.List;

public class UserServiceImpl implements UserService {
    UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int delUserById(int id) {
        return userMapper.delUserByName(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public User querUserByName(String name) {
        return userMapper.querUserByName(name);
    }

    @Override
    public List<User> querAllUser() {
        return userMapper.querAllUser();
    }


}
