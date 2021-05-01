package ict.servlet;

import ict.bean.UserInfo;
import ict.db.UserDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "HandleUser", urlPatterns = {"/handleUser"})
public class HandleUser extends HttpServlet {

    private UserDB db;

    @Override
    public void init() {
        String dbUser = this.getServletContext().getInitParameter("dbUser");
        String dbPassword = this.getServletContext().getInitParameter("dbPassword");
        String dbUrl = this.getServletContext().getInitParameter("dbUrl");

        db = new UserDB(dbUrl, dbUser, dbPassword);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("listProfile".equalsIgnoreCase(action)) {
            if (!isAuthenticated(request)) {
                RequestDispatcher rd;// V
                rd = getServletContext().getRequestDispatcher("/login.jsp");// V
                rd.forward(request, response);
            } else {
                HttpSession session = request.getSession(true);
                UserInfo ui = (UserInfo) session.getAttribute("userInfo");
                UserInfo user = db.getUser(ui.getUsername());

                RequestDispatcher rd;
                rd = getServletContext().getRequestDispatcher("/profile.jsp");
                request.setAttribute("user", user);
                rd.forward(request, response);
            }
        } else if ("changeProfile".equalsIgnoreCase(action)) {
            String username = request.getParameter("username");
            String pwd = request.getParameter("newpwd");
            String tel = request.getParameter("tel");

            UserInfo user = new UserInfo();
            user.setUsername(username);
            user.setPassword(pwd);
            user.setTel(tel);

            db.editUser(user);

            RequestDispatcher rd;
            rd = getServletContext().getRequestDispatcher("/handleUser?action=listProfile");
            rd.forward(request, response);
        }
    }

    private boolean isAuthenticated(HttpServletRequest request) {
        boolean result = false;
        HttpSession session = request.getSession();
        //get the UserInfo from session
        if (session.getAttribute("userInfo") != null) {
            result = true;
        }
        return result;
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
