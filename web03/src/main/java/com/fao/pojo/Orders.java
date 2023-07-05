package com.fao.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {
    private int orderId;

    private int userId;

    private int goodsId;

    private int orderNum;

    private float sum;

    private Date orderTime;

    private  String comment;

    private  int status;

}
