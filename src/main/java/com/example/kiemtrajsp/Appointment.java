package com.example.kiemtrajsp;

import java.time.LocalDateTime;

public class Appointment {
    private String name;
    private LocalDateTime dateTime;
    private String location;
    private String description;

    public Appointment(String name, LocalDateTime dateTime, String location, String description) {
        this.name = name;
        this.dateTime = dateTime;
        this.location = location;
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public String getLocation() {
        return location;
    }

    public String getDescription() {
        return description;
    }

    @Override
    public String toString() {
        return "Appointment{" +
                "name='" + name + '\'' +
                ", dateTime=" + dateTime +
                ", location='" + location + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
