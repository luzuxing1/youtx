package com.youtx.rent.entity;

public class LodgerOpinion {
    private Integer lodgerOpinionId;

    private String opinionContent;

    private Integer roomId;

    private Integer lodgerId;

    private Integer landlordId;

    public Integer getLodgerOpinionId() {
        return lodgerOpinionId;
    }

    public void setLodgerOpinionId(Integer lodgerOpinionId) {
        this.lodgerOpinionId = lodgerOpinionId;
    }

    public String getOpinionContent() {
        return opinionContent;
    }

    public void setOpinionContent(String opinionContent) {
        this.opinionContent = opinionContent == null ? null : opinionContent.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public Integer getLodgerId() {
        return lodgerId;
    }

    public void setLodgerId(Integer lodgerId) {
        this.lodgerId = lodgerId;
    }

    public Integer getLandlordId() {
        return landlordId;
    }

    public void setLandlordId(Integer landlordId) {
        this.landlordId = landlordId;
    }
}