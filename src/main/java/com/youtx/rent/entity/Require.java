package com.youtx.rent.entity;

public class Require {
    private Integer reqId;

    private String reqRule;

    private Integer reqDays;

    private String reqStartTime;

    private String reqEndTime;

    private String reqCheckTime;

    private String reqForeign;

    private Integer roomId;

    public Integer getReqId() {
        return reqId;
    }

    public void setReqId(Integer reqId) {
        this.reqId = reqId;
    }

    public String getReqRule() {
        return reqRule;
    }

    public void setReqRule(String reqRule) {
        this.reqRule = reqRule == null ? null : reqRule.trim();
    }

    public Integer getReqDays() {
        return reqDays;
    }

    public void setReqDays(Integer reqDays) {
        this.reqDays = reqDays;
    }

    public String getReqStartTime() {
        return reqStartTime;
    }

    public void setReqStartTime(String reqStartTime) {
        this.reqStartTime = reqStartTime == null ? null : reqStartTime.trim();
    }

    public String getReqEndTime() {
        return reqEndTime;
    }

    public void setReqEndTime(String reqEndTime) {
        this.reqEndTime = reqEndTime == null ? null : reqEndTime.trim();
    }

    public String getReqCheckTime() {
        return reqCheckTime;
    }

    public void setReqCheckTime(String reqCheckTime) {
        this.reqCheckTime = reqCheckTime == null ? null : reqCheckTime.trim();
    }

    public String getReqForeign() {
        return reqForeign;
    }

    public void setReqForeign(String reqForeign) {
        this.reqForeign = reqForeign == null ? null : reqForeign.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}