package com.ervin.middleware.canal.item.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ervin.middleware.canal.item.pojo.Item;

public interface IItemService extends IService<Item> {
    void saveItem(Item item);
}
