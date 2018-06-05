package com.youtx.rent.entity;

import java.util.Date;

public class Room {
    private Integer roomId;

    private String roomCity;

    private String roomName;

    private Integer roomPrice;

    private Integer roomSale;

    private Integer roomOpinionNum;

    private Date roomTime;

    private Integer userId;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomCity() {
        return roomCity;
    }

    public void setRoomCity(String roomCity) {
        this.roomCity = roomCity == null ? null : roomCity.trim();
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName == null ? null : roomName.trim();
    }

    public Integer getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(Integer roomPrice) {
        this.roomPrice = roomPrice;
    }

    public Integer getRoomSale() {
        return roomSale;
    }

    public void setRoomSale(Integer roomSale) {
        this.roomSale = roomSale;
    }

    public Integer getRoomOpinionNum() {
        return roomOpinionNum;
    }

    public void setRoomOpinionNum(Integer roomOpinionNum) {
        this.roomOpinionNum = roomOpinionNum;
    }

    public Date getRoomTime() {
        return roomTime;
    }

    public void setRoomTime(Date roomTime) {
        this.roomTime = roomTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}