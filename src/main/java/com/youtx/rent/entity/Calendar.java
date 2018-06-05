package com.youtx.rent.entity;

import java.util.Date;

public class Calendar {
    private Integer calendarId;

    private Integer calendarPrice;

    private Date calendarDate;

    private String calendarRoom;

    private Integer roomId;

    public Integer getCalendarId() {
        return calendarId;
    }

    public void setCalendarId(Integer calendarId) {
        this.calendarId = calendarId;
    }

    public Integer getCalendarPrice() {
        return calendarPrice;
    }

    public void setCalendarPrice(Integer calendarPrice) {
        this.calendarPrice = calendarPrice;
    }

    public Date getCalendarDate() {
        return calendarDate;
    }

    public void setCalendarDate(Date calendarDate) {
        this.calendarDate = calendarDate;
    }

    public String getCalendarRoom() {
        return calendarRoom;
    }

    public void setCalendarRoom(String calendarRoom) {
        this.calendarRoom = calendarRoom == null ? null : calendarRoom.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}