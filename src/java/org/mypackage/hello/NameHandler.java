package org.mypackage.hello;


import java.time.LocalDate;
import java.time.Period;

public class NameHandler {
    private String name;
    private String birthDate;

    public NameHandler() {
        name = null;
        birthDate = null;
    }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getBirthDate() { return birthDate; }
    public void setBirthDate(String birthDate) { this.birthDate = birthDate; }

    public int getAge() {
        if (birthDate == null || birthDate.isEmpty()) return 0;
        LocalDate birth = LocalDate.parse(birthDate);
        return Period.between(birth, LocalDate.now()).getYears();
    }
}