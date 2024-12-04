package com.example.kiemtrajsp;

public class StudyMaterial {
    private String title;
    private String subject;
    private String instructor;
    private String format;

    public StudyMaterial(String title, String subject, String instructor, String format) {
        this.title = title;
        this.subject = subject;
        this.instructor = instructor;
        this.format = format;
    }

    public String getTitle() {
        return title;
    }

    public String getSubject() {
        return subject;
    }

    public String getInstructor() {
        return instructor;
    }

    public String getFormat() {
        return format;
    }

    @Override
    public String toString() {
        return "StudyMaterial{" +
                "title='" + title + '\'' +
                ", subject='" + subject + '\'' +
                ", instructor='" + instructor + '\'' +
                ", format='" + format + '\'' +
                '}';
    }
}
