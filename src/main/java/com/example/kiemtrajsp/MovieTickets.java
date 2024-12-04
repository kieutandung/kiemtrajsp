package com.example.kiemtrajsp;

public class MovieTickets {
    private String id;
    private String name;
    private int showtime;
    private int price;

    public MovieTickets(String id, String name, int showtime, int price) {
        this.id = id;
        this.name = name;
        this.showtime = showtime;
        this.price = price;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getShowtime() {
        return showtime;
    }

    public void setShowtime(int showtime) {
        this.showtime = showtime;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "MovieTickets{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", showtime=" + showtime +
                ", price=" + price +
                '}';
    }
}
