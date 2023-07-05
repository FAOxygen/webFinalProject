package com.fao.service;

import com.fao.dao.ShoppingcartMapper;
import com.fao.pojo.Shoppingcart;

import java.util.List;

public class ShoppingcartServiceImpl implements ShoppingcartService{
    ShoppingcartMapper shoppingcartMapper;

    public void setShoppingcartMapper(ShoppingcartMapper shoppingcartMapper) {
        this.shoppingcartMapper = shoppingcartMapper;
    }

    @Override
    public int addShoppingcart(Shoppingcart shoppingcart) {
        return shoppingcartMapper.addShoppingcart(shoppingcart);
    }

    @Override
    public List<Shoppingcart> queryByUserId(int id) {
        return shoppingcartMapper.queryByUserId(id);
    }

    @Override
    public List<Shoppingcart> queryAllCarts() {
        return shoppingcartMapper.queryAllCarts();
    }

    @Override
    public int clear(int id) {
        return shoppingcartMapper.clear(id);
    }
}
