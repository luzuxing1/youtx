package com.youtx.rent.dao;

import com.youtx.rent.entity.Facility;

public interface FacilityMapper {
    int deleteByPrimaryKey(Integer facId);

    int insert(Facility record);

    int insertSelective(Facility record);

    Facility selectByPrimaryKey(Integer facId);

    int updateByPrimaryKeySelective(Facility record);

    int updateByPrimaryKey(Facility record);
}