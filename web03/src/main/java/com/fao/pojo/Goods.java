package com.fao.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Goods {
    private int goodsId;

    private String goodsName;

    private int typeId;

    private int goodsNum;

    private float price;

    private String img;

    private String intro;

    private int status;


}
