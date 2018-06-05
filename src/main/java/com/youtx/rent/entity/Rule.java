package com.youtx.rent.entity;

public class Rule {
    private Integer ruleId;

    private String ruleType;

    private String rulePercent;

    private Integer ruleBeforeLive;

    private Integer ruleOrderDays;

    private Integer roomId;

    public Integer getRuleId() {
        return ruleId;
    }

    public void setRuleId(Integer ruleId) {
        this.ruleId = ruleId;
    }

    public String getRuleType() {
        return ruleType;
    }

    public void setRuleType(String ruleType) {
        this.ruleType = ruleType == null ? null : ruleType.trim();
    }

    public String getRulePercent() {
        return rulePercent;
    }

    public void setRulePercent(String rulePercent) {
        this.rulePercent = rulePercent == null ? null : rulePercent.trim();
    }

    public Integer getRuleBeforeLive() {
        return ruleBeforeLive;
    }

    public void setRuleBeforeLive(Integer ruleBeforeLive) {
        this.ruleBeforeLive = ruleBeforeLive;
    }

    public Integer getRuleOrderDays() {
        return ruleOrderDays;
    }

    public void setRuleOrderDays(Integer ruleOrderDays) {
        this.ruleOrderDays = ruleOrderDays;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}