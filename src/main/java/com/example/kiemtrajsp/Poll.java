package com.example.kiemtrajsp;

import java.util.HashMap;
import java.util.Map;

public class Poll {
    private String question;
    private String choices;
    private int numberOfChoices;

    public Poll(String question, String choices, int numberOfChoices) {
        this.question = question;
        this.choices = choices;
        this.numberOfChoices = numberOfChoices;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getChoices() {
        return choices;
    }

    public void setChoices(String choices) {
        this.choices = choices;
    }

    public int getNumberOfChoices() {
        return numberOfChoices;
    }

    public void setNumberOfChoices(int numberOfChoices) {
        this.numberOfChoices = numberOfChoices;
    }

}
