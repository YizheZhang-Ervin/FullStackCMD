package com.ervin.middleware.es.hoteladmin.service.impl;

import com.ervin.middleware.es.hoteladmin.pojo.Hotel;
import com.ervin.middleware.es.hoteladmin.service.IHotelService;
import com.ervin.middleware.es.hoteladmin.mapper.HotelMapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class HotelService extends ServiceImpl<HotelMapper, Hotel> implements IHotelService {
}
