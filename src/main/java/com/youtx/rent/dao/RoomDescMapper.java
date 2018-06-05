package com.youtx.rent.dao;

import com.youtx.rent.entity.RoomDesc;

public interface RoomDescMapper {
    int deleteByPrimaryKey(Integer descId);

    int insert(RoomDesc record);

    int insertSelective(RoomDesc record);

    RoomDesc selectByPrimaryKey(Integer descId);

    int updateByPrimaryKeySelective(RoomDesc record);

    int updateByPrimaryKey(RoomDesc record);
}