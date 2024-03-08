/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers;

import DAL.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(name="SearchByDe", urlPatterns={"/SearchByDe"})
public class SearchByDe extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchByDe</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchByDe at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //Object departId = request.getParameter("depart");

        String departIds[] = request.getParameterValues("depart");
        //DAO.INSTANCE.SearchStudentByDepartment(departId + "");

        String sql = "";
        String s = "";
        for (int i = 0; i < departIds.length; i++) {
            s += " departID = '" + departIds[i] + "' or ";
        }
        s = s.substring(0, s.length() - 3);
        sql += "select * from Student where" + s;
        DAO.INSTANCE.SearchStudentByDepartments(sql);
        request.setAttribute("dao", DAO.INSTANCE);
        request.getRequestDispatcher("Views/SearchbyGender.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
