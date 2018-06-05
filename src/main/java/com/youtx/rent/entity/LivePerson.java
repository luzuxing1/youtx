package com.youtx.rent.entity;

public class LivePerson {
    private Integer personId;

    private String personName;

    private Integer personCid;

    private Integer personPhone;

    private Integer scheduleId;

    public Integer getPersonId() {
        return personId;
    }

    public void setPersonId(Integer personId) {
        this.personId = personId;
    }

    public String getPersonName() {
        return personName;
    }

    public void setPersonName(String personName) {
        this.personName = personName == null ? null : personName.trim();
    }

    public Integer getPersonCid() {
        return personCid;
    }

    public void setPersonCid(Integer personCid) {
        this.personCid = personCid;
    }

    public Integer getPersonPhone() {
        return personPhone;
    }

    public void setPersonPhone(Integer personPhone) {
        this.personPhone = personPhone;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }
}