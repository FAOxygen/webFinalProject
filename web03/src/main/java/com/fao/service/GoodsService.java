package com.fao.service;

import com.fao.pojo.Goods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface GoodsService {
    List<Goods> queryAllGoods();

    Goods queryGoodsById(@Param("id") int id);

    List<Goods> queryGoodsByName(String name);

    int addGoods(Goods goods);

    int updateGoods(Goods goods);

    int deleteGoodsById(@Param("id") int id);
}
