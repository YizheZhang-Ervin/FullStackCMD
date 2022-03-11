package com.ervin.middleware.es.hotel.service;

import com.ervin.middleware.es.hotel.pojo.Hotel;
import com.ervin.middleware.es.hotel.pojo.PageResult;
import com.ervin.middleware.es.hotel.pojo.RequestParams;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

public interface IHotelService extends IService<Hotel> {
    PageResult search(RequestParams params);

    Map<String, List<String>> getFilters(RequestParams params);

    List<String> getSuggestion(String key);

    void deleteById(Long hotelId);

    void saveById(Long hotelId);
}
