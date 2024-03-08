/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author Fpt
 */
public class Certificate {
    private int certid;
    private String certname;

    public Certificate() {
    }

    public Certificate(int certid, String certname) {
        this.certid = certid;
        this.certname = certname;
    }

    public int getCertid() {
        return certid;
    }

    public void setCertid(int certid) {
        this.certid = certid;
    }

    public String getCertname() {
        return certname;
    }

    public void setCertname(String certname) {
        this.certname = certname;
    }
    
}
