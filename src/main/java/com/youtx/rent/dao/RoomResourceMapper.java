package com.youtx.rent.dao;

import com.youtx.rent.entity.RoomResource;

public interface RoomResourceMapper {
    int deleteByPrimaryKey(Integer resourceId);

    int insert(RoomResource record);

    int insertSelective(RoomResource record);

    RoomResource selectByPrimaryKey(Integer resourceId);

    int updateByPrimaryKeySelective(RoomResource record);

    int updateByPrimaryKey(RoomResource record);
}