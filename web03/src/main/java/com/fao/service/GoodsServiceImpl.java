package com.fao.service;

import com.fao.dao.GoodsMapper;
import com.fao.pojo.Goods;

import java.util.List;

public class GoodsServiceImpl implements GoodsService{
    GoodsMapper goodsMapper;

    public void setGoodsMapper(GoodsMapper goodsMapper){this.goodsMapper=goodsMapper;}

    @Override
    public List<Goods> queryAllGoods() {
        return goodsMapper.queryAllGoods();
    }

    @Override
    public Goods queryGoodsById(int id) {
        return goodsMapper.queryGoodsById(id);
    }

    @Override
    public List<Goods> queryGoodsByName(String name) {
        return goodsMapper.queryGoodsByName(name);
    }

    @Override
    public int addGoods(Goods goods) {
        return goodsMapper.addGoods(goods);
    }

    @Override
    public int updateGoods(Goods goods) {
        return goodsMapper.updateGoods(goods);
    }

    @Override
    public int deleteGoodsById(int id) {
        return goodsMapper.deleteGoodsById(id);
    }
}
