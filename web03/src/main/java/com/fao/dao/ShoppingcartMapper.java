package com.fao.dao;

import com.fao.pojo.Goods;
import com.fao.pojo.Shoppingcart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShoppingcartMapper {
    List <Shoppingcart> queryByUserId(@Param("id") int id);

    int addShoppingcart(Shoppingcart shoppingcart);

    List <Shoppingcart> queryAllCarts();

    int clear(int id);

}
