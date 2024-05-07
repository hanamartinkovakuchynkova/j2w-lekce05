package cz.czechitas.java2webapps.lekce5.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

/**
 * Entita reprezentující osobu.
 */
public class Person {
    private String givenName;
    private String lastName;
    private LocalDate birthDate;

    private Gender gender;

    public Person() {
    }

    public Person(String givenName, String lastName, LocalDate birthDate, Gender gender) {
        this.givenName = givenName;
        this.lastName = lastName;
        this.birthDate = birthDate;
        this.gender = gender;
    }

    public String getGivenName() {
        return givenName;
    }

    public void setGivenName(String givenName) {
        this.givenName = givenName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }
}
