/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import models.*;

/**
 *
 * @author Fpt
 */
public class DAO extends DBContext{
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
                        rs.getString(2)
                );}
            
        } catch (Exception e) {
            System.out.println("ko thẻ truy ván");
        }
        return null;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        Account acc = dao.findAccount("user1", "abc123");
        System.out.println(acc.getUsername());
    }
}
