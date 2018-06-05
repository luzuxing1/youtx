package com.youtx.rent.entity;

import java.util.Date;

public class LodgerOrder {
    private Integer lodgerOrderId;

    private Integer orderNum;

    private Date orderTime;

    private String orderStatus;

    private String orderReason;

    private Integer roomId;

    private Integer scheduleId;

    private Integer userId;

    public Integer getLodgerOrderId() {
        return lodgerOrderId;
    }

    public void setLodgerOrderId(Integer lodgerOrderId) {
        this.lodgerOrderId = lodgerOrderId;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public String getOrderReason() {
        return orderReason;
    }

    public void setOrderReason(String orderReason) {
        this.orderReason = orderReason == null ? null : orderReason.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}