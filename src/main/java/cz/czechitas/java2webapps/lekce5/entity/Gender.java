package cz.czechitas.java2webapps.lekce5.entity;

public enum Gender {
    Female("female"),
    Male("male"),
    ;

    private final String title;

    Gender(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}
