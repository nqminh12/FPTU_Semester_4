/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

import java.time.LocalDate;

/**
 *
 * @author Fpt
 */
public class Employee {
    private int empid;
    private String empname;
    private LocalDate date;
    private boolean empgender;
    private String createdby;

    public Employee() {
    }

    public Employee(int empid, String empname, LocalDate date, boolean empgender, String createdby) {
        this.empid = empid;
        this.empname = empname;
        this.date = date;
        this.empgender = empgender;
        this.createdby = createdby;
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getEmpname() {
        return empname;
    }

    public void setEmpname(String empname) {
        this.empname = empname;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public boolean isEmpgender() {
        return empgender;
    }

    public void setEmpgender(boolean empgender) {
        this.empgender = empgender;
    }

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }
    
}
