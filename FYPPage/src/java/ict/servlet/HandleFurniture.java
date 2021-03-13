/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

//import com.google.gson.Gson;
import ict.bean.FurnitureBean;
import ict.bean.ShoppingCartBean;
import ict.bean.*;
import ict.db.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "HandleFurniture", urlPatterns = {"/handleFurniture"})
public class HandleFurniture extends HttpServlet {

    private FurnitureDB db;
    private ShoppingCartDB scdb;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");
        db = new FurnitureDB(dbUrl, dbUser, dbPassword);
        scdb = new ShoppingCartDB(dbUrl, dbUser, dbPassword);
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

        } else if ("limitsearch".equalsIgnoreCase(action)) {
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

        } else if ("search2".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for all customer
            String search = request.getParameter("search");
            if (search != null) {

                ArrayList<FurnitureBean> furnitureList = db.queryCustByName(search);

                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/product.jsp");
                request.setAttribute("furnitureList", furnitureList);
                rd.forward(request, response);
            }

        } else if ("shoppingCart".equalsIgnoreCase(action)) {
            /* HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo"); //v 
            ArrayList<FurnitureBean> furnitureList = db.queryCust();
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/shoppingCart.jsp");
            request.setAttribute("furnitureList", furnitureList);
            rd.forward(request, response);*/
            ////////////////////////////////////////////////////////////////////
            HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo"); //v 
            ArrayList<ShoppingCartBean> shoppingCartList = scdb.queryCustByID1(ui.getUsername());
            request.setAttribute("shoppingCartList", shoppingCartList);// V
            ArrayList furnitures = db.queryCust();
            request.setAttribute("furnitures", furnitures);// V
            RequestDispatcher rd;// V
            rd = getServletContext().getRequestDispatcher("/shoppingCart.jsp");// V
            rd.forward(request, response);// V

        } else if ("getEditFurniture".equalsIgnoreCase(action)) {
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

        } else if ("limitShowOneFurniture".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for a customer witht the id
            String id = request.getParameter("id");

            // set the result into the attribute
            // forward the result to the editFurniture.jsp
            FurnitureBean customer = db.queryCustByID(id);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/limitproduct_detail3.jsp");
            request.setAttribute("c", customer);
            rd.forward(request, response);

        } else if ("putToCart".equalsIgnoreCase(action)) {
            // call the query db to get retrieve for a customer witht the id
            String id = request.getParameter("id");

            HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo"); //v 
            scdb.addRecord(id, ui.getUsername());
            ArrayList<ShoppingCartBean> shoppingCartList = scdb.queryCustByID1(ui.getUsername());
            request.setAttribute("shoppingCartList", shoppingCartList);// V
            ArrayList furnitures = db.queryCust();
            request.setAttribute("furnitures", furnitures);// V
            RequestDispatcher rd;// V
            rd = getServletContext().getRequestDispatcher("/shoppingCart.jsp");// V
            rd.forward(request, response);// V

        } else if ("limitproductList".equalsIgnoreCase(action)) {
            ArrayList<FurnitureBean> furnitureList = db.queryCust();
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/limitproduct.jsp");
            request.setAttribute("furnitureList", furnitureList);
            rd.forward(request, response);

        } else if ("productList".equalsIgnoreCase(action)) {
            ArrayList<FurnitureBean> furnitureList = db.queryCust();
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/product.jsp");
            request.setAttribute("furnitureList", furnitureList);
            rd.forward(request, response);

        } else if ("receipt".equalsIgnoreCase(action)) {
            HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo"); //v 
            ArrayList<ShoppingCartBean> shoppingCartList = scdb.queryCustByID1(ui.getUsername());
            request.setAttribute("orderList", shoppingCartList);// V
            ArrayList furnitures = db.queryCust();
            request.setAttribute("Furnitures", furnitures);// V
            RequestDispatcher rd;// V
            rd = getServletContext().getRequestDispatcher("/receipt.jsp");// V
            rd.forward(request, response);// V

        } else if ("sort".equalsIgnoreCase(action)) { //for price and name sort only
            String type = request.getParameter("type");
            ArrayList<FurnitureBean> furnitureList = null;

            switch (type) {
                case "asc":
                    furnitureList = db.queryFurnitureByPrice();
                    break;
                case "desc":
                    furnitureList = db.queryFurnitureByPriceDesc();
                    break;
                case "ascName":
                    furnitureList = db.queryFurnitureByName();
                    break;
                case "descName":
                    furnitureList = db.queryFurnitureByNameDesc();
                    break;
            }

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/product.jsp");
            request.setAttribute("furnitureList", furnitureList);
            rd.forward(request, response);
        }  else if ("type".equalsIgnoreCase(action)) { // for type sort only
            // call the query db to get retrieve for all customer
            String type = request.getParameter("type");
            if (type != null) {

                ArrayList<FurnitureBean> furnitureList = db.queryCustByType(type);
                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/product.jsp");
                request.setAttribute("furnitureList", furnitureList);
                rd.forward(request, response);
            }
        } else if ("categorySort".equalsIgnoreCase(action)) { //for type, price, name sort at the same time
            String type = request.getParameter("type");
            String sort = request.getParameter("sort");
            ArrayList<FurnitureBean> furnitureList = null;

            switch (sort) {
                case "asc":
                    if (type != null) {
                        furnitureList = db.queryCustByType(type);
                    } else {
                        furnitureList = db.queryFurnitureByPrice();
                    }
                    break;
                case "desc":
                    if (type != null) {
                        furnitureList = db.queryFurnitureByTypeDesc(type);
                    } else {
                        furnitureList = db.queryFurnitureByPriceDesc();
                    }
                    break;
                case "ascName":
                    if (type != null) {
                        furnitureList = db.queryFurnitureByNameAsc(type);
                    } else {
                        furnitureList = db.queryFurnitureByName();
                    }
                    break;
                case "descName":
                    if (type != null) {
                        furnitureList = db.queryFurnitureByNameDesc(type);
                    } else {
                        furnitureList = db.queryFurnitureByNameDesc();
                    }
                    break;
            }

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/product.jsp");
            request.setAttribute("furnitureList", furnitureList);
            rd.forward(request, response);
        } else if ("jsonData".equalsIgnoreCase(action)) {
            ArrayList<FurnitureBean> heads = db.queryCust();

            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

          //  String json = new Gson().toJson(heads);
        //    out.print(json);
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
