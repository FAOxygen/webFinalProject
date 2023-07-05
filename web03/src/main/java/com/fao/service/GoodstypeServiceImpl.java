package com.fao.service;

import com.fao.dao.GoodstypeMapper;
import com.fao.pojo.Goodstype;

import java.util.List;

public class GoodstypeServiceImpl implements GoodstypeService {
    GoodstypeMapper goodstypeMapper;

    public void setGoodstypeMapper(GoodstypeMapper goodstypeMapper) {
        this.goodstypeMapper = goodstypeMapper;
    }

    @Override
    public List<Goodstype> queryAllGoodstype() {
        return goodstypeMapper.queryAllGoodstype();
    }

    @Override
    public int addGoodstype(Goodstype goodstype) {
        return goodstypeMapper.addGoodstype(goodstype);
    }
}
