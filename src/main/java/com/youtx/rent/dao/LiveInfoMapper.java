package com.youtx.rent.dao;

import com.youtx.rent.entity.LiveInfo;

public interface LiveInfoMapper {
    int deleteByPrimaryKey(Integer liveId);

    int insert(LiveInfo record);

    int insertSelective(LiveInfo record);

    LiveInfo selectByPrimaryKey(Integer liveId);

    int updateByPrimaryKeySelective(LiveInfo record);

    int updateByPrimaryKey(LiveInfo record);
}