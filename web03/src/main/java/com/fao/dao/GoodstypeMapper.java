package com.fao.dao;

import com.fao.pojo.Goods;
import com.fao.pojo.Goodstype;

import java.util.List;

public interface GoodstypeMapper {
    List<Goodstype> queryAllGoodstype();

    int addGoodstype(Goodstype goodstype);


}
