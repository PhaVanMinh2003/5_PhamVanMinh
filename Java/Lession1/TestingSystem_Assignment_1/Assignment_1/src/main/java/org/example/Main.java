package org.example;

import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        //Tạo Phòng ban(Department)
        Department department1=new Department();
        department1.setDepartmentID(1);
        department1.setDepartmentName("Sale");

        Department department2=new Department();
        department2.setDepartmentID(2);
        department2.setDepartmentName("Marketting");

        Department department3=new Department();
        department3.setDepartmentID(3);
        department3.setDepartmentName("IT");
        //Tạo nhóm(Group)
        Group group1=new Group();
        group1.setGroupID(1);
        group1.setGroupName("Java Fresher");

        Group group2=new Group();
        group2.setGroupID(1);
        group2.setGroupName("C# Fresher");

        Group group3=new Group();
        group3.setGroupID(1);
        group3.setGroupName("PYTHON Fresher");
        // Create position
        Position position1=new Position();
        position1.setPositionID(1);
        position1.setPositionName("Sale");

        Position position2=new Position();
        position2.setPositionID(2);
        position2.setPositionName("Marketing");
        // Create account
        Account account1=new Account();
        account1.setAccountID(1);
        account1.setEmail("phamminh.15092003@gmail.com");
        account1.setGroups(group1,group2);
        account1.setPosition(position1);
        account1.setDepartment(department1);
        account1.setFullName("Phạm Văn Minh");
        account1.setCreateDate(LocalDate.now());
        account1.setUsername("minhmaime");

        Account account2=new Account();
        account2.setAccountID(2);
        account2.setEmail("2100008608@nttu.edu.vn");
        account2.setGroups(group1);
        account2.setPosition(position2);
        account2.setDepartment(department2);
        account2.setFullName("Phạm Văn di");
        account2.setCreateDate(LocalDate.now());
        account2.setUsername("dimaime");

        // print department
        System.out.println("Department 1 information: ");
        System.out.println("name: " + department1.getDepartmentName());
        System.out.println("id: " + department1.getDepartmentID());
        System.out.println("\n");

        System.out.println("Department 2 information: ");

        System.out.println("name: " + department2.getDepartmentName());
        System.out.println("id: " + department2.getDepartmentID());
        System.out.println("\n");

        // print account
        System.out.println("Account 1 information: ");

        System.out.println("id: " + account1.getAccountID());
        System.out.println("Email: " + account1.getEmail());
        System.out.println("Department Name: " + account1.getDepartment().getDepartmentName());
        System.out.println("Create Date: " + account1.getCreateDate());

    }
}