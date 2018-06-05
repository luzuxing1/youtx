package com.youtx.rent.dao;

import com.youtx.rent.entity.Price;

public interface PriceMapper {
    int deleteByPrimaryKey(Integer priceId);

    int insert(Price record);

    int insertSelective(Price record);

    Price selectByPrimaryKey(Integer priceId);

    int updateByPrimaryKeySelective(Price record);

    int updateByPrimaryKey(Price record);
}