package com.example.kiemtrajsp;

import java.time.LocalDate;

public class Scholarship {
    private String name;
    private String criteria;
    private double value;
    private LocalDate deadline;

    public Scholarship(String name, String criteria, double value, LocalDate deadline) {
        this.name = name;
        this.criteria = criteria;
        this.value = value;
        this.deadline = deadline;
    }

    public String getName() {
        return name;
    }

    public String getCriteria() {
        return criteria;
    }

    public double getValue() {
        return value;
    }

    public LocalDate getDeadline() {
        return deadline;
    }

    @Override
    public String toString() {
        return "Scholarship{" +
                "name='" + name + '\'' +
                ", criteria='" + criteria + '\'' +
                ", value=" + value +
                ", deadline=" + deadline +
                '}';
    }
}
