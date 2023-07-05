package com.fao.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Shoppingcart {
    private int cartId;

    private int userId;

    private int goodsId;

    private int cartNum;
}
