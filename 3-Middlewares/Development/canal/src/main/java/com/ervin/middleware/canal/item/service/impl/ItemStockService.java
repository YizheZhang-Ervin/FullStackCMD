package com.ervin.middleware.canal.item.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ervin.middleware.canal.item.service.IItemStockService;
import com.ervin.middleware.canal.item.mapper.ItemStockMapper;
import com.ervin.middleware.canal.item.pojo.ItemStock;
import org.springframework.stereotype.Service;

@Service
public class ItemStockService extends ServiceImpl<ItemStockMapper, ItemStock> implements IItemStockService {
}
