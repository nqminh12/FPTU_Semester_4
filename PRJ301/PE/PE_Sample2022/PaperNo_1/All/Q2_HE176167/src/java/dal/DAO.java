/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;
import models.Student;

/**
 *
 * @author Fpt
 */
public class DAO extends DBContext{
    public List<Student> findStudent(String s){
        List<Student> std = new Vector<>();
        try {
            String sql = "select * from Student where [name] like '%" + s + "%'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                std.add(new Student(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4)
                ));
            }
        } catch (Exception e) {
        }
        return std;
    }
    
}
