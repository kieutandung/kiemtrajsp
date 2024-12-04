package com.example.kiemtrajsp;

public class OnlineCourse {
    private String courseName;
    private String instructor;
    private int hours;
    private int price;

    public OnlineCourse(String courseName, String instructor, int hours, int price) {
        this.courseName = courseName;
        this.instructor = instructor;
        this.hours = hours;
        this.price = price;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }



    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "OnlineCourse{" +
                "courseName='" + courseName + '\'' +
                ", instructor='" + instructor + '\'' +
                ", hours=" + hours +
                ", price=" + price +
                '}';
    }
}
