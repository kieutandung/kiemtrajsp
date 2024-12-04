package com.example.kiemtrajsp;

public class Pet {
    private String name;
    private String species;
    private int age;
    private String owner;

    public Pet(String name, String species, int age, String owner) {
        this.name = name;
        this.species = species;
        this.age = age;
        this.owner = owner;
    }

    public String getName() {
        return name;
    }

    public String getSpecies() {
        return species;
    }

    public int getAge() {
        return age;
    }

    public String getOwner() {
        return owner;
    }

    @Override
    public String toString() {
        return "Pet{" +
                "name='" + name + '\'' +
                ", species='" + species + '\'' +
                ", age=" + age +
                ", owner='" + owner + '\'' +
                '}';
    }
}
