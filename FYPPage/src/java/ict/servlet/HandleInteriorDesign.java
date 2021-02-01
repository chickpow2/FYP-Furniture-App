/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import ict.bean.FurnitureBean;
import ict.bean.InteriorDesignBean;
import ict.db.FurnitureDB;
import ict.db.InteriorDesignDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "HandleInterior", urlPatterns = {"/handleInterior"})
public class HandleInteriorDesign extends HttpServlet {

    private FurnitureDB fdb;
    private InteriorDesignDB db;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new InteriorDesignDB(dbUrl, dbUser, dbPassword);
        fdb = new FurnitureDB(dbUrl, dbUser, dbPassword);
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("interiorDesign".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            ArrayList interior = db.queryCust();
            // set the result into the attribute
            request.setAttribute("interior", interior);
            // redirect the result to the listFurnitures.jsp
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/"
                    + "interiordesign.jsp");
            rd.forward(request, response);
        } else if ("interiorDesignDetail".equalsIgnoreCase(action)) {

            String id = request.getParameter("id");

            InteriorDesignBean customer = db.queryCustByID(id);
            request.setAttribute("c", customer);
            ArrayList<FurnitureBean> furnitures = fdb.queryCust(); //cannot get 
            request.setAttribute("furnitures", furnitures);// V
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/interiorDesignDetail.jsp");
            rd.forward(request, response);
        } else {
            PrintWriter out = response.getWriter();
            out.println("No such action!!!");
        } //no other else if 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
