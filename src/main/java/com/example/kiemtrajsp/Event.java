package com.example.kiemtrajsp;

public class Event {
    private String eventName;
    private String location;
    private String eventDateTime;
    private int participantCount;

    public Event(String eventName, String location, String eventDateTime, int participantCount) {
        this.eventName = eventName;
        this.location = location;
        this.eventDateTime = eventDateTime;
        this.participantCount = participantCount;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEventDateTime() {
        return eventDateTime;
    }

    public void setEventDateTime(String eventDateTime) {
        this.eventDateTime = eventDateTime;
    }

    public int getParticipantCount() {
        return participantCount;
    }

    public void setParticipantCount(int participantCount) {
        this.participantCount = participantCount;
    }

    @Override
    public String toString() {
        return "Event{" +
                "eventName='" + eventName + '\'' +
                ", location='" + location + '\'' +
                ", eventDateTime='" + eventDateTime + '\'' +
                ", participantCount=" + participantCount +
                '}';
    }
}
