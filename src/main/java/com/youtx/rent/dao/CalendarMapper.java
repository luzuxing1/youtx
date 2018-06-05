package com.youtx.rent.dao;

import com.youtx.rent.entity.Calendar;

public interface CalendarMapper {
    int deleteByPrimaryKey(Integer calendarId);

    int insert(Calendar record);

    int insertSelective(Calendar record);

    Calendar selectByPrimaryKey(Integer calendarId);

    int updateByPrimaryKeySelective(Calendar record);

    int updateByPrimaryKey(Calendar record);
}