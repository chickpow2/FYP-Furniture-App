/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import ict.bean.FurnitureBean;
import ict.db.FurnitureDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "itemEdit", urlPatterns = {"/itemEdit"})
public class HandleItemEdit extends HttpServlet {

    private FurnitureDB db;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new FurnitureDB(dbUrl, dbUser, dbPassword);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        int price = Integer.parseInt(request.getParameter("price"));
        String model = request.getParameter("model");
        int stock = Integer.parseInt(request.getParameter("stock"));
        String type = request.getParameter("type");
        String descript = request.getParameter("descript");
        String dDescript = request.getParameter("dDescript");

        if ("edit".equalsIgnoreCase(action)) {
            FurnitureBean bb = new FurnitureBean();
            bb.setFurnitureId(id);
            bb.setName(name);
            bb.setPrice(price);
            bb.setModel(model);
            bb.setRating(0);
            bb.setStock(stock);
            bb.setDetailDescription(dDescript);
            bb.setType(type);
            bb.setImage(null);
            bb.setDescription(descript);
            db.editRecord(bb);
        } else if ("add".equalsIgnoreCase(action)) {
            db.addRecord(name,price,model,0,stock,type,descript,dDescript);
        }
        response.sendRedirect("handleFurniture?action=staffList");

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
        processRequest(request, response);
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
