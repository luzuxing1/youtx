package com.youtx.rent.entity;

public class RoomDesc {
    private Integer descId;

    private String descTitle;

    private String descRemark;

    private String descIntroduce;

    private String descTraffic;

    private String descLife;

    private String descView;

    private String descOther;

    private String descTag;

    private Integer roomId;

    public Integer getDescId() {
        return descId;
    }

    public void setDescId(Integer descId) {
        this.descId = descId;
    }

    public String getDescTitle() {
        return descTitle;
    }

    public void setDescTitle(String descTitle) {
        this.descTitle = descTitle == null ? null : descTitle.trim();
    }

    public String getDescRemark() {
        return descRemark;
    }

    public void setDescRemark(String descRemark) {
        this.descRemark = descRemark == null ? null : descRemark.trim();
    }

    public String getDescIntroduce() {
        return descIntroduce;
    }

    public void setDescIntroduce(String descIntroduce) {
        this.descIntroduce = descIntroduce == null ? null : descIntroduce.trim();
    }

    public String getDescTraffic() {
        return descTraffic;
    }

    public void setDescTraffic(String descTraffic) {
        this.descTraffic = descTraffic == null ? null : descTraffic.trim();
    }

    public String getDescLife() {
        return descLife;
    }

    public void setDescLife(String descLife) {
        this.descLife = descLife == null ? null : descLife.trim();
    }

    public String getDescView() {
        return descView;
    }

    public void setDescView(String descView) {
        this.descView = descView == null ? null : descView.trim();
    }

    public String getDescOther() {
        return descOther;
    }

    public void setDescOther(String descOther) {
        this.descOther = descOther == null ? null : descOther.trim();
    }

    public String getDescTag() {
        return descTag;
    }

    public void setDescTag(String descTag) {
        this.descTag = descTag == null ? null : descTag.trim();
    }

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }
}