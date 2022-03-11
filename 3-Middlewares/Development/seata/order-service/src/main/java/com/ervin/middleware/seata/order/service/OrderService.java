package com.ervin.middleware.seata.order.service;

import com.ervin.middleware.seata.order.entity.Order;

public interface OrderService {

    /**
     * 创建订单
     */
    Long create(Order order);
}