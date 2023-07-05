package com.fao.service;

import com.fao.dao.OrdersMapper;
import com.fao.pojo.Orders;

public class OrdersServiceImpl implements OrdersService{
    OrdersMapper ordersMapper;

    public void setOrdersMapper(OrdersMapper ordersMapper) {
        this.ordersMapper = ordersMapper;
    }

    @Override
    public int addorders(Orders orders) {
        return addorders(orders);
    }
}
