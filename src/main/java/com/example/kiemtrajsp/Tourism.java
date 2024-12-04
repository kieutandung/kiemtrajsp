package com.example.kiemtrajsp;

public class Tourism {
    private String name;
    private String location;
    private int departureDate;
    private int price;
    private String availability;

    public Tourism(String name, String location, int departureDate, int price, String availability) {
        this.name = name;
        this.location = location;
        this.departureDate = departureDate;
        this.price = price;
        this.availability = availability;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(int departureDate) {
        this.departureDate = departureDate;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    @Override
    public String toString() {
        return "Tourism{" +
                "name='" + name + '\'' +
                ", location='" + location + '\'' +
                ", departureDate='" + departureDate + '\'' +
                ", price=" + price +
                ", availability='" + availability + '\'' +
                '}';
    }
}
