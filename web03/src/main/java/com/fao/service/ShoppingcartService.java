package com.fao.service;

import com.fao.pojo.Shoppingcart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingcartService {
    int addShoppingcart(Shoppingcart shoppingcart);

    List <Shoppingcart> queryByUserId(@Param("id") int id);

    List <Shoppingcart> queryAllCarts();

    int clear(int id);
}
