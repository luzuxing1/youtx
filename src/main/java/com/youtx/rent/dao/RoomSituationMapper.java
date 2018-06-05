package com.youtx.rent.dao;

import com.youtx.rent.entity.RoomSituation;

public interface RoomSituationMapper {
    int deleteByPrimaryKey(Integer situId);

    int insert(RoomSituation record);

    int insertSelective(RoomSituation record);

    RoomSituation selectByPrimaryKey(Integer situId);

    int updateByPrimaryKeySelective(RoomSituation record);

    int updateByPrimaryKey(RoomSituation record);
}