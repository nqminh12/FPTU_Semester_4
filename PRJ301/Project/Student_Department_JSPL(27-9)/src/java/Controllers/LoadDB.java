/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import DAL.*;
import Models.*;
import java.util.Map;

/**
 *
 * @author PC-Phong
 */
public class LoadDB extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoadDB</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoadDB at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        DAO.INSTANCE.loadDB();
        request.setAttribute("dao", DAO.INSTANCE);
     //   request.getRequestDispatcher("Views/LoadDB.jsp").forward(request, response);
        request.getRequestDispatcher("Views/LoadDB01.jsp").forward(request, response);

        // processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Object o1 = request.getParameter("btnInsert");
        Object o2 = request.getParameter("btnUpdate");

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String departId = request.getParameter("departId");
        String add = request.getParameter("add");
        String img = request.getParameter("img");
        Object obj = request.getParameter("gender");
          boolean gender = obj != null && ((obj + "")).equals("M");
       // boolean gender = obj != null;
        int age = Integer.parseInt(request.getParameter("age"));
        float gpa = Float.parseFloat(request.getParameter("gpa"));
        String dob = request.getParameter("dob");

        boolean checkUpdate = false;
        for (Student st : DAO.INSTANCE.getStd()) {
            if (st.getId().equals(id)) {
                checkUpdate = true;
                break;
            }
        }
        if (o1 != null && !checkUpdate) {
            DAO.INSTANCE.Insert(id, name, gender, departId, age, gpa, add, img, dob);
        }
        if (o2 != null && checkUpdate) {
            DAO.INSTANCE.Update(id, name, gender, departId, age, gpa, add, img, dob);
        }
        doGet(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
