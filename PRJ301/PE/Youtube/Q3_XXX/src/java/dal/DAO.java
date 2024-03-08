/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;
import java.time.LocalDate;
import models.*;

/**
 *
 * @author Fpt
 */
public class DAO extends DBContext {
    
    public List<Account> findAllAccount(){
        List<Account> acc = new Vector<>();
        try {
            String sql = "select * from Account";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                acc.add(new Account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)
                ));
            }
        } catch (Exception e) {
        }
        return acc;
    }
    
    public List<Certificate> findAllCertificate(){
        List<Certificate> cert = new Vector<>();
        try {
            String sql = "select * from Certificate";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                cert.add(new Certificate(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (Exception e) {
        }
        return cert;
    }
    
    public Account findAccount(String username, String password){
        try {
            String sql = "select * from Account where username = ? and password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            return new Account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)
                );}
            
        } catch (Exception e) {
            System.out.println("ko thẻ truy ván");
        }
        return null;
    }
    
    public void insertEmployee(String id, String name, String dob, String gender, String createby){
        try {
            String sql = "insert into Employee(empid, empname, empdob, empgender, createdby) values (?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(id));
            ps.setString(2, name);
            ps.setString(3, dob);
            ps.setInt(4, Integer.parseInt(gender));
            ps.setString(5, createby);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("ko thẻ truy ván");
        }
    }
    
    public void insertCertificate(int empid, String certid, String date){
        try {
            String sql = "insert into Employee_Certificate(empid, certid, issueddate) values (?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, empid);
            ps.setString(2, certid);
            ps.setString(3, date);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("ko thẻ truy ván");
        }
    }
    
    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        
        dao.insertEmployee("200", "Minh", "01/01/2003", "1", "mra");
    }
}
