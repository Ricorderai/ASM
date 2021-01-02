package com.petrichor.pojo;

public class Admin {
    private String account;
    private String password;
    private String remarks;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", remarks='" + remarks + '\'' +
                '}';
    }
}
