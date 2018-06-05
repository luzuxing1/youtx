package com.youtx.rent.entity;

import java.util.Date;

public class LiveInfo {
    private Integer liveId;

    private Date liveStarttime;

    private Date liveEndtime;

    private Integer scheduleId;

    public Integer getLiveId() {
        return liveId;
    }

    public void setLiveId(Integer liveId) {
        this.liveId = liveId;
    }

    public Date getLiveStarttime() {
        return liveStarttime;
    }

    public void setLiveStarttime(Date liveStarttime) {
        this.liveStarttime = liveStarttime;
    }

    public Date getLiveEndtime() {
        return liveEndtime;
    }

    public void setLiveEndtime(Date liveEndtime) {
        this.liveEndtime = liveEndtime;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }
}