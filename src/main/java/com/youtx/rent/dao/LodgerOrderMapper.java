package com.youtx.rent.dao;

import com.youtx.rent.entity.LodgerOrder;

public interface LodgerOrderMapper {
    int deleteByPrimaryKey(Integer lodgerOrderId);

    int insert(LodgerOrder record);

    int insertSelective(LodgerOrder record);

    LodgerOrder selectByPrimaryKey(Integer lodgerOrderId);

    int updateByPrimaryKeySelective(LodgerOrder record);

    int updateByPrimaryKey(LodgerOrder record);
}