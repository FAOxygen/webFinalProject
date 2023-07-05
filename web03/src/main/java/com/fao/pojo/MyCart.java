package com.fao.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MyCart {
    private String goodsName;
    private int goodsNum;

    private double price;

    private double money;
}
