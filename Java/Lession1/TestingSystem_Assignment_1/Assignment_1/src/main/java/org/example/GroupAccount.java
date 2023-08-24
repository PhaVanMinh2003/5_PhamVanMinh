package org.example;

import java.time.LocalDate;

public class GroupAccount {
    private Group Group;
    private Account Account;
    private LocalDate JoinDate;

    public org.example.Group getGroup() {
        return Group;
    }

    public void setGroup(org.example.Group group) {
        Group = group;
    }

    public org.example.Account getAccount() {
        return Account;
    }

    public void setAccount(org.example.Account account) {
        Account = account;
    }

    public LocalDate getJoinDate() {
        return JoinDate;
    }

    public void setJoinDate(LocalDate joinDate) {
        JoinDate = joinDate;
    }
    public GroupAccount(){}
    public GroupAccount(Group Group,Account Account,LocalDate JoinDate){
        this.Group=Group;
        this.Account=Account;
        this.JoinDate=JoinDate;
    }
}
