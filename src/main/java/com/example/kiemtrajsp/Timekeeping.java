package com.example.kiemtrajsp;

public class Timekeeping {
    private String name;
    private int datesWorked;
    private int hoursWorked;
    private String status;

    public Timekeeping(String name, int datesWorked, int hoursWorked, String status) {
        this.name = name;
        this.datesWorked = datesWorked;
        this.hoursWorked = hoursWorked;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDatesWorked() {
        return datesWorked;
    }

    public void setDatesWorked(int datesWorked) {
        this.datesWorked = datesWorked;
    }

    public int getHoursWorked() {
        return hoursWorked;
    }

    public void setHoursWorked(int hoursWorked) {
        this.hoursWorked = hoursWorked;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Timekeeping{" +
                "name='" + name + '\'' +
                ", datesWorked=" + datesWorked +
                ", hoursWorked=" + hoursWorked +
                ", status='" + status + '\'' +
                '}';
    }
}
