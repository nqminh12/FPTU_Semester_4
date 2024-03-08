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
public class EmployeeCertìicate {
    private int empid;
    private int certid;
    private String date;

    public EmployeeCertìicate() {
    }

    public EmployeeCertìicate(int empid, int certid, String date) {
        this.empid = empid;
        this.certid = certid;
        this.date = date;
    }

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public int getCertid() {
        return certid;
    }

    public void setCertid(int certid) {
        this.certid = certid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    
    
    
}
