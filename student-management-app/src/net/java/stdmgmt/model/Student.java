package net.java.stdmgmt.model;

//import java.sql.Date;

public class Student {
    protected int id;
    protected String name;
    protected String dob;
    protected String email;
    protected String contactno;

    public Student() {}

    public Student(String name, String dob, String email, String contactno) {
        super();
        this.name = name;
        this.dob =dob;
        this.email = email;
        this.contactno = contactno;
    }

    public Student(int id, String name, String dob, String email, String contactno) {
        super();
        this.id = id;
        this.name = name;
        this.dob =dob;
        this.email = email;
        this.contactno = contactno;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getContactno() {
        return contactno;
    }
    public void setContactno(String contactno) {
        this.contactno = contactno;
    }

}