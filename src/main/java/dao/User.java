package dao;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class User {

    @Id
    // MySQL / OracleDB 12+
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "USER_ID")
    private int id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "SURNAME")
    private String surname;

    @Column(name = "EMAIL")
    private String email;

    @Column(name = "PHONE_NUMBER")
    private String phone_number;

    @Column(name = "BIRTHDAY")
    private LocalDate birthday;

    @Column(name = "PASSWORD")
    private String password;

    @Column(name = "ACCOUNT")
    private String account;

    public User() {

    }

    public User(int id, String name, String surname, String email, String phone_number, LocalDate birthday,
	    String password, String account) {
	super();
	this.id = id;
	this.name = name;
	this.surname = surname;
	this.email = email;
	this.phone_number = phone_number;
	this.birthday = birthday;
	this.password = password;
	this.account = account;
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

    public String getSurname() {
	return surname;
    }

    public void setSurname(String surname) {
	this.surname = surname;
    }

    public String getEmail() {
	return email;
    }

    public void setEmail(String email) {
	this.email = email;
    }

    public String getPhone_number() {
	return phone_number;
    }

    public void setPhone_number(String phone_number) {
	this.phone_number = phone_number;
    }

    public LocalDate getBirthday() {
	return birthday;
    }

    public void setBirthday(LocalDate birthday) {
	this.birthday = birthday;
    }

    public String getPassword() {
	return password;
    }

    public void setPassword(String password) {
	this.password = password;
    }

    public String getAccount() {
	return account;
    }

    public void setAccount(String account) {
	this.account = account;
    }

    @Override
    public String toString() {
	return "Region [id=" + id + ", name=" + name + "]";
    }
}
