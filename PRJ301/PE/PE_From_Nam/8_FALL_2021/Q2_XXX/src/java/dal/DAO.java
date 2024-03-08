/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;

/**
 *
 * @author Fpt
 */
public class DAO extends DBContext {
    public void insertNew(String title, String start, String end){
        try {
            String sql = "insert into SchoolYear (title, startdate, enddate) values (?, ? , ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, title);
            ps.setString(2, start);
            ps.setString(3, end);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("ko thẻ truy ván");
        }
    }
}
