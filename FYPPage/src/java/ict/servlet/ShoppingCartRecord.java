/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.servlet;

import ict.bean.FurnitureBean;
import ict.bean.OrderBean;
import ict.bean.OrderRecordBean;
import ict.bean.ShoppingCartBean;
import ict.bean.UserInfo;
import ict.db.FurnitureDB;
import ict.db.OrderRecordDB;
import ict.db.ShoppingCartDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author teen
 */
@WebServlet(name = "ShoppingCartRecord", urlPatterns = {"/order"})
public class ShoppingCartRecord extends HttpServlet {

    private OrderRecordDB ordb;
    private ShoppingCartDB scdb;
    private FurnitureDB db;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");

        ordb = new OrderRecordDB(dbUrl, dbUser, dbPassword);
        scdb = new ShoppingCartDB(dbUrl, dbUser, dbPassword);
        db = new FurnitureDB(dbUrl, dbUser, dbPassword);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("makeOrder".equalsIgnoreCase(action)) {
            String shipping = request.getParameter("shipping");
            String address = request.getParameter("address");
            HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo"); //v 

            ArrayList<ShoppingCartBean> sc = scdb.queryCustByID1(ui.getUsername());
            ArrayList<FurnitureBean> f = db.queryCust();

            int total = 0;
            for (int i = 0; i < sc.size(); i++) {
                total += f.get(Integer.parseInt(sc.get(i).getFurnitureId()) - 1).getPrice();
            }
            String ttPrice = Integer.toString(total);
            ordb.addOrder(ui.getUsername(), null, shipping, address, ttPrice);

            String id = ordb.takeOrderId();
            for (int i = 0; i < sc.size(); i++) {
                ShoppingCartBean scb = sc.get(i);

                this.ordb.addOrderRecord(id, scb.getFurnitureId());
            }
            String orderId = ordb.takeOrderId();
            ArrayList<OrderRecordBean> order = ordb.queryOrderRecord(orderId);
            request.setAttribute("orderList", order);
            ArrayList furnitures = db.queryCust();
            request.setAttribute("furnitures", furnitures);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/receipt.jsp");
            rd.forward(request, response);
        } else if ("staffViewOrder".equalsIgnoreCase(action)) {
            ArrayList<OrderBean> order = ordb.queryStaffViewOrder();

            request.setAttribute("Order", order);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/StaffViewOrder.jsp");
            rd.forward(request, response);
        } else if ("staffViewOrderRecord".equalsIgnoreCase(action)) {
            String id = request.getParameter("id");

            ArrayList<OrderRecordBean> order = ordb.queryOrderRecord(id);
            request.setAttribute("order", order);

            ArrayList furnitures = db.queryCust();
            request.setAttribute("furnitures", furnitures);

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/StaffViewOrderRecord.jsp");
            rd.forward(request, response);
        } else if ("staffSend".equalsIgnoreCase(action)) {
            String id = request.getParameter("id");

            this.ordb.UpdateSend(id);

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/order?action=staffViewOrder");
            rd.forward(request, response);
        } else if ("staffArrived".equalsIgnoreCase(action)) {
            String id = request.getParameter("id");

            this.ordb.UpdateArrived(id);

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/order?action=staffViewOrder");
            rd.forward(request, response);
        } else if ("custOrder".equalsIgnoreCase(action)) {
            HttpSession session = request.getSession(true); //v
            UserInfo ui = (UserInfo) session.getAttribute("userInfo");
            ArrayList<OrderBean> order = ordb.queryViewOrder(ui.getUsername());

            request.setAttribute("Order", order);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/CustOrder.jsp");
            rd.forward(request, response);
        }else if ("receipt".equalsIgnoreCase(action)){
            String id = request.getParameter("id");
            ArrayList<OrderRecordBean> order = ordb.queryOrderRecord(id);
            request.setAttribute("orderList", order);
            ArrayList furnitures = db.queryCust();
            request.setAttribute("furnitures", furnitures);
            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/receipt.jsp");
            rd.forward(request, response);
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
        processRequest(request, response);
    }

}
