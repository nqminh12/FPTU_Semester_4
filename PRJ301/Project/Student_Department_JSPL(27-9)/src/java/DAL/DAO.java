/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.*;
import Models.*;
import java.util.*;

/**
 *
 * @author PC-Phong
 */
public class DAO {

    public static DAO INSTANCE = new DAO();
    private List<Student> stdd;
    private List<Student> stdg;
    private List<Student> stddg;
    private List<Student> sta;

    public List<Student> getSta() {
        return sta;
    }

    public void setSta(List<Student> sta) {
        this.sta = sta;
    }
    public List<Student> getStddg() {
        return stddg;
    }

    public void setStddg(List<Student> stddg) {
        this.stddg = stddg;
    }
    private Connection con;
    private String status = "OK";
    private List<Student> std;
    private HashMap<String, Department> dept;
    private List<Menu> menu;

    public List<Menu> getMenu() {
        return menu;
    }

    public void setMenu(List<Menu> menu) {
        this.menu = menu;
    }

    public void loadMenu() {
        menu = new Vector<Menu>();
        String sql = " select * from Menu";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                menu.add(new Menu(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
            }
        } catch (Exception e) {
            status = "Error at read Menu" + e.getMessage();
        }

    }

    public DAO() {
        if (INSTANCE == null) {
            try {
                con = new DBContext().getConnection();
            } catch (Exception e) {
                status = "Error ar connection" + e.getMessage();
            }
        }
    }

    public void loadDB() {
        std = new Vector<>();
        String sql = "select * from Student";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                std.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), //Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "Error ar read Student " + e.getMessage();
        }
        dept = new HashMap<>();
        sql = " select * from Department";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dept.put(rs.getString(1), new Department(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3)
                ));
            }
        } catch (Exception e) {
            status = "Error ar read Department " + e.getMessage();
        }
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Student> getStd() {
        return std;
    }

    public void setStd(List<Student> std) {
        this.std = std;
    }

    public HashMap<String, Department> getDept() {
        return dept;
    }

    public void setDept(HashMap<String, Department> dept) {
        this.dept = dept;
    }

    public List<Student> getStdg() {
        return stdg;
    }

    public void setStdg(List<Student> stdg) {
        this.stdg = stdg;
    }

    public void Insert(String id, String name, boolean gender, String departId, int age, float gpa, String add, String img, String dob) {
        String sql = "Insert into Student values(?,?,?,?,?,?,?,?,?) ";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(4, departId);
            ps.setString(7, add);
            ps.setString(8, img);
            ps.setString(9, dob);
            ps.setBoolean(3, gender);
            ps.setInt(5, age);
            ps.setFloat(6, gpa);
            ps.execute();
        } catch (Exception e) {
            status = "Error ar insert student" + e.getMessage();
        }
    }

    public void Update(String id, String name, boolean gender, String departId, int age, float gpa, String add, String img, String dob) {
        String sql = "update student set name=?,gender=?, departId=?, age=?, gpa=?, [add]=?,img=?,dob=? where id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(3, departId);
            ps.setString(6, add);
            ps.setString(7, img);
            ps.setString(8, dob);
            ps.setString(9, id);
            ps.setBoolean(2, gender);
            ps.setInt(4, age);
            ps.setFloat(5, gpa);
            ps.execute();

        } catch (Exception e) {
            status = "Error at Update Student" + e.getMessage();
        }
    }

    public void Delete(String id) {
        String sql = "delete from Student where id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.execute();
        } catch (Exception e) {
            status = "error at delete Student" + e.getMessage();
        }
    }

    public void SearchStudentByDepartment(String department) {
        stdd = new Vector<>();
        String sql = " select * from Student where DepartId = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, department);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                stdd.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Department";
        }

    }

    public List<Student> getStdd() {
        return stdd;
    }

    public void setStdd(List<Student> stdd) {
        this.stdd = stdd;
    }

    public void SearchStudentByDepartments(String sql) {
        stdd = new Vector<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                stdd.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Department";
        }
    }

    public void SearchStudentByGender (String gender) {
        stdg = new Vector<>();
        String sql = " select * from Student where gender = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, gender);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                stdg.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Gender";
        }

    }

    public void SearchStudentByGenders(String sql) {
        stdg = new Vector<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                stdg.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Gender";
        }

    }
    public void SearchStudentByDepartmentsAndGenders(String sql) {
        stddg = new Vector<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                stddg.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Department and Gender";
        }

    }
    public void SearchStudentByOption(String sql) {
        sta = new Vector<>();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                sta.add(new Student(
                        rs.getString("Id"),
                        rs.getString(2), // Name
                        rs.getBoolean(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getFloat(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getDate(9)
                ));
            }
        } catch (Exception e) {
            status = "error at search Student by Option";
        }

    }
    
    public static void main(String[] args) {
        DAO.INSTANCE.loadDB();
        for (Student object : DAO.INSTANCE.std) {
            System.out.println(object.getAge());
        }
    }
    
    
}
