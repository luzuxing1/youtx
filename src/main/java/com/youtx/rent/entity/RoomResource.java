package com.youtx.rent.entity;

public class RoomResource {
    private Integer resourceId;

    private String resourceAddress;

    private String resourceSign;

    private Integer roomId;

    public Integer getResourceId() {
        return resourceId;
    }

    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }

    public String getResourceAddress() {
        return resourceAddress;
    }

    public void setResourceAddress(String resourceAddress) {
        this.resourceAddress = resourceAddress == null ? null : resourceAddress.trim();
    }

    public String getResourceSign() {
        return resourceSign;
    }

    public void setResourceSign(String resourceSign) {
        this.resourceSign = resourceSign == null ? null : resourceSign.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}