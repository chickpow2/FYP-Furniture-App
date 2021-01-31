<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>Order ID : <label>123456789</label></p>
        <p>User ID : <label>Chan Da Man</label></p>
            <%
                Date date = new Date();
                SimpleDateFormat od = new SimpleDateFormat("dd/MM/yyyy");
                SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy");
                out.print("<p>Order Date : <label>" + od.format(date) + "</label></p>");
                try {
                    date = sd.parse(od.format(date));
                    long t = date.getTime() + 7 * 24 * 60 * 60 * 1000;
                    date.setTime(t);
                    out.println("<p>Send Date : <label>" + sd.format(date) + "</label></p>");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
    </body>
</html>
