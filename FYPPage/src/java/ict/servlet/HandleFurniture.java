/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import ict.bean.FurnitureBean;
import ict.db.FurnitureDB;
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
@WebServlet(name = "HandleFurniture", urlPatterns = {"/handleFurniture"})
public class HandleFurniture extends HttpServlet {

    private FurnitureDB db;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new FurnitureDB(dbUrl, dbUser, dbPassword);
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

        if ("list".equalsIgnoreCase(action) || "home".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            ArrayList furnitures = db.queryCust();
            // set the result into the attribute
            request.setAttribute("furnitures", furnitures);
            // redirect the result to the listFurnitures.jsp
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/"
                    + "index.jsp");
            rd.forward(request, response);
        } else if ("delete".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            String id = request.getParameter("id");
            if (id != null) {

                int rs = db.delRecord(id);
                // set the result into the attribute
                // redirect the result to the listFurnitures.jsp
                ArrayList customers = db.queryCust();
                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/handleFurniture?action=list");
                request.setAttribute("customers", customers);
                rd.forward(request, response);
            }

        } else if ("search".equalsIgnoreCase(action)) {
            String search = request.getParameter("search");
            if (search != null) {

                // set the result into the attribute
                // redirect the result to the listFurnitures.jsp
                ArrayList<FurnitureBean> furnitureList = db.queryCustByName(search);
                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/product.jsp");
                request.setAttribute("furnitureList", furnitureList);
                rd.forward(request, response);
            }
        } else if ("search1".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            String search = request.getParameter("search");
            if (search != null) {

                ArrayList<FurnitureBean> furnitureList = db.queryCustByName(search);
                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/product.jsp");
                request.setAttribute("furnitureList", furnitureList);
                rd.forward(request, response);
            }

        } else if ("type".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            String type = request.getParameter("type");
            if (type != null) {

                ArrayList<FurnitureBean> furnitureList = db.queryCustByType(type);
                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/product.jsp");
                request.setAttribute("furnitureList", furnitureList);
                rd.forward(request, response);
            }}else if ("getEditFurniture".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for a customer witht the id
            String id = request.getParameter("id");

            // set the result into the attribute
            // forward the result to the editFurniture.jsp
            FurnitureBean customer = db.queryCustByID(id);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/editFurniture.jsp");
            request.setAttribute("c", customer);
            rd.forward(request, response);

        } else if ("ShowOneFurniture".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for a customer witht the id
            String id = request.getParameter("id");

            // set the result into the attribute
            // forward the result to the editFurniture.jsp
            FurnitureBean customer = db.queryCustByID(id);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/product_detail3.jsp");
            request.setAttribute("c", customer);
            rd.forward(request, response);

        } else if ("productList".equalsIgnoreCase(action)) {
            ArrayList<FurnitureBean> furnitureList = db.queryCust();
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/product.jsp");
            request.setAttribute("furnitureList", furnitureList);
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
