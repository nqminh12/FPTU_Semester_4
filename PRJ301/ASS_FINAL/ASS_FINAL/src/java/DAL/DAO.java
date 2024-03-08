/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import java.sql.*;
import java.util.List;
import java.util.Vector;
import Models.*;

/**
 *
 * @author Adim
 */
public class DAO {

    public static DAO INSTANCE = new DAO();
    public Connection con;
    private String status = "OK";
    private List<Products> prd;
    
    
    public DAO() {
        if (INSTANCE == null) {
            try {
                con = new DBContext().getConnection();
                System.out.println("Kết nối database: " + con.isClosed());
            } catch (Exception e) {
                status = "Error ar connection" + e.getMessage();
            }
        }
    }

    public List<Products> getPrd() {
        return prd;
    }

    public void setPrd(List<Products> prd) {
        this.prd = prd;
    }
    
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void loadDB() {
        prd = new Vector<>();
        String sql = "select * from Products";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                prd.add(new Products(
                        rs.getInt(1),
                        rs.getString(2), //Name
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8)
                ));
            }
        } catch (Exception e) {
            status = "Error ar read Products " + e.getMessage();
        }
    }
    
    

}
