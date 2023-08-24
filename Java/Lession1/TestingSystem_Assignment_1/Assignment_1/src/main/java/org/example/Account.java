package org.example;
import java.time.LocalDate;
import java.util.*;
public class Account {
    private int AccountID;
    private String Email;
    private String Username;
    private String FullName;
    private Department department;
    private  Position position;
    private LocalDate createDate;
    private Group[] groups;

    public int getAccountID() {
        return AccountID;
    }

    public void setAccountID(int accountID) {
        AccountID = accountID;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String fullName) {
        FullName = fullName;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

    public LocalDate getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
    }

    public Group[] getGroups() {
        return groups;
    }

    public void setGroups(Group[] groups) {
        this.groups = groups;
    }
    public void setGroups(Group group1, Group group2) {
        this.groups= new Group[]{group1};
        this.groups= new Group[]{group2};
    }
    public void setGroups(Group group1) {
        this.groups= new Group[]{group1};
    }
    public  Account(){}
    public  Account(int AccountID,String Email,String Username, String FullName, Department department,Position position,LocalDate createDate,Group[] groups){
        this.AccountID=AccountID;
        this.Email=Email;
        this.Username=Username;
        this.FullName=FullName;
        this.department=department;
        this.position=position;
        this.createDate=createDate;
        this.groups=groups;
    }


}
