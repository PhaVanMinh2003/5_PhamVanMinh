package org.example;

import java.time.LocalDate;

public class Group {
    private int GroupID;
    private String GroupName;
    private Account Account;
    private LocalDate CreateDate;

    public int getGroupID() {
        return GroupID;
    }

    public void setGroupID(int groupID) {
        GroupID = groupID;
    }

    public String getGroupName() {
        return GroupName;
    }

    public void setGroupName(String groupName) {
        GroupName = groupName;
    }

    public Account getAccount() {
        return Account;
    }

    public void setAccount(Account Account) {
        Account = Account;
    }

    public LocalDate getCreateDate() {
        return CreateDate;
    }

    public void setCreateDate(LocalDate createDate) {
        CreateDate = createDate;
    }
    public Group(){}
    public Group( int GroupID,String GroupName,Account Account , LocalDate CreateDate){
        this.GroupID=GroupID;
        this.GroupName=GroupName;
        this.Account=Account;
        this.CreateDate=CreateDate;
    }
}
