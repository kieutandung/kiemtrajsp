package com.example.kiemtrajsp;

public class Bank {
    private int accountNumber;
    private String name;
    private int balance;
    private String status;

    public Bank(int accountNumber, String name, int balance, String status) {
        this.accountNumber = accountNumber;
        this.name = name;
        this.balance = balance;
        this.status = status;
    }

    public int getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(int accountNumber) {
        this.accountNumber = accountNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getBalance() {
        return balance;
    }

    public void setBalance(int balance) {
        this.balance = balance;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Bank{" +
                "accountNumber=" + accountNumber +
                ", name='" + name + '\'' +
                ", balance=" + balance +
                ", status='" + status + '\'' +
                '}';
    }
}
