package com.youtx.rent.entity;

public class LandlordReply {
    private Integer landlordReplyId;

    private Integer opinionId;

    private Integer userId;

    private String replyContent;

    public Integer getLandlordReplyId() {
        return landlordReplyId;
    }

    public void setLandlordReplyId(Integer landlordReplyId) {
        this.landlordReplyId = landlordReplyId;
    }

    public Integer getOpinionId() {
        return opinionId;
    }

    public void setOpinionId(Integer opinionId) {
        this.opinionId = opinionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent == null ? null : replyContent.trim();
    }
}