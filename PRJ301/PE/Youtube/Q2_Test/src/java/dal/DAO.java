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
    
    public List<Employee> findEmployee(String s){
        List<Employee> emp = new Vector<>();
        try {
            String sql = "select * from Employee where createdby = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, s);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                emp.add(new Employee(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3).toLocalDate(),
                        rs.getBoolean(4),
                        rs.getString(5)
                ));
            }
        } catch (Exception e) {
        }
        return emp;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        
        List<Account> acc = dao.findAllAccount();
        for (Account account : acc) {
            System.out.println(account.getPassword());
        }
    }
}
