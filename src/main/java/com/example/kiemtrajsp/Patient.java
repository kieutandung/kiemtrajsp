package com.example.kiemtrajsp;

import java.time.LocalDate;

public class Patient {
    private String name;
    private int age;
    private String medicalCondition;
    private LocalDate admissionDate;
    private String treatmentStatus; // "Đang điều trị" hoặc "Đã xuất viện"

    public Patient(String name, int age, String medicalCondition, LocalDate admissionDate, String treatmentStatus) {
        this.name = name;
        this.age = age;
        this.medicalCondition = medicalCondition;
        this.admissionDate = admissionDate;
        this.treatmentStatus = treatmentStatus;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getMedicalCondition() {
        return medicalCondition;
    }

    public LocalDate getAdmissionDate() {
        return admissionDate;
    }

    public String getTreatmentStatus() {
        return treatmentStatus;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", medicalCondition='" + medicalCondition + '\'' +
                ", admissionDate=" + admissionDate +
                ", treatmentStatus='" + treatmentStatus + '\'' +
                '}';
    }
}
