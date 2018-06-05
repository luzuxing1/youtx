package com.youtx.rent.entity;

public class RoomSituation {
    private Integer situId;

    private String situType;

    private String situRent;

    private String situFloor;

    private Integer situRoomNum;

    private Integer situBedNum;

    private String situBedType;

    private Integer situStandardPeople;

    private Integer situExtraPeople;

    private Integer situRoomArea;

    private Integer situToiletNum;

    private String situToiletType;

    private String situMaster;

    private Integer situOtherResource;

    private Integer roomId;

    public Integer getSituId() {
        return situId;
    }

    public void setSituId(Integer situId) {
        this.situId = situId;
    }

    public String getSituType() {
        return situType;
    }

    public void setSituType(String situType) {
        this.situType = situType == null ? null : situType.trim();
    }

    public String getSituRent() {
        return situRent;
    }

    public void setSituRent(String situRent) {
        this.situRent = situRent == null ? null : situRent.trim();
    }

    public String getSituFloor() {
        return situFloor;
    }

    public void setSituFloor(String situFloor) {
        this.situFloor = situFloor == null ? null : situFloor.trim();
    }

    public Integer getSituRoomNum() {
        return situRoomNum;
    }

    public void setSituRoomNum(Integer situRoomNum) {
        this.situRoomNum = situRoomNum;
    }

    public Integer getSituBedNum() {
        return situBedNum;
    }

    public void setSituBedNum(Integer situBedNum) {
        this.situBedNum = situBedNum;
    }

    public String getSituBedType() {
        return situBedType;
    }

    public void setSituBedType(String situBedType) {
        this.situBedType = situBedType == null ? null : situBedType.trim();
    }

    public Integer getSituStandardPeople() {
        return situStandardPeople;
    }

    public void setSituStandardPeople(Integer situStandardPeople) {
        this.situStandardPeople = situStandardPeople;
    }

    public Integer getSituExtraPeople() {
        return situExtraPeople;
    }

    public void setSituExtraPeople(Integer situExtraPeople) {
        this.situExtraPeople = situExtraPeople;
    }

    public Integer getSituRoomArea() {
        return situRoomArea;
    }

    public void setSituRoomArea(Integer situRoomArea) {
        this.situRoomArea = situRoomArea;
    }

    public Integer getSituToiletNum() {
        return situToiletNum;
    }

    public void setSituToiletNum(Integer situToiletNum) {
        this.situToiletNum = situToiletNum;
    }

    public String getSituToiletType() {
        return situToiletType;
    }

    public void setSituToiletType(String situToiletType) {
        this.situToiletType = situToiletType == null ? null : situToiletType.trim();
    }

    public String getSituMaster() {
        return situMaster;
    }

    public void setSituMaster(String situMaster) {
        this.situMaster = situMaster == null ? null : situMaster.trim();
    }

    public Integer getSituOtherResource() {
        return situOtherResource;
    }

    public void setSituOtherResource(Integer situOtherResource) {
        this.situOtherResource = situOtherResource;
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}