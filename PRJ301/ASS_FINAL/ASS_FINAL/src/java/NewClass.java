
import DAL.DAO;
import Models.Products;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author Fpt
 */
public class NewClass {

    public static void main(String[] args) throws SQLException {
        DAO dao = new DAO();
        DAO.INSTANCE.loadDB();
        System.out.println(DAO.INSTANCE.getPrd());
        for (Products products : DAO.INSTANCE.getPrd()) {
            System.out.println(products.getName());
        }
    }
}
