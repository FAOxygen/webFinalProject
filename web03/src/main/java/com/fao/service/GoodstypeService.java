package com.fao.service;

import com.fao.pojo.Goodstype;

import java.util.List;

public interface GoodstypeService {
    List<Goodstype> queryAllGoodstype();

    int addGoodstype(Goodstype goodstype);
}
