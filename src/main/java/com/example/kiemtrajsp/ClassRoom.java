package com.example.kiemtrajsp;

public class ClassRoom {
    private String name;
    private int id;
    private int point;
    private String status;

    public ClassRoom(String name, int id, int point, String status) {
        this.name = name;
        this.id = id;
        this.point = point;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Class{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", point=" + point +
                ", status='" + status + '\'' +
                '}';
    }
}
