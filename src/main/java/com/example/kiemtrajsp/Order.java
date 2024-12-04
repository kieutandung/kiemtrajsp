package com.example.kiemtrajsp;

public class Order {
    private int id;
    private int date;
    private String customer;
    private String status;

    public Order(int id, int date, String customer, String status) {
        this.id = id;
        this.date = date;
        this.customer = customer;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDate() {
        return date;
    }

    public void setDate(int date) {
        this.date = date;
    }

    public String getCustomer() {
        return customer;
    }

    public void setCustomer(String customer) {
        this.customer = customer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", date=" + date +
                ", customer='" + customer + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
