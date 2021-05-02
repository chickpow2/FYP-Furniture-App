<%@page import="ict.bean.OrderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff View Order</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
        <style>
            .divCenter{
                margin-left: 10%;
                margin-right: 10%;
            }
            thead, tbody {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="StaffMenu.jsp" />
        <%
            ArrayList<OrderBean> order = (ArrayList<OrderBean>) request.getAttribute("Order");
            out.println("<div class='divCenter'>");
            out.println("<h1>Staff Manage Order List</h1>");
            out.println("<table class='table table-striped'>");
            out.println("<thead class='thead-dark'>"
                    + "<tr>");
            out.println("<th>Order ID</th>"
                    + "<th>User ID</th>"
                    + "<th>Send Date</th >"
                    + "<th>Order Date</th>"
                    + "<th>Status</th >"
                    + "<th>Shipping Option</th >"
                    + "<th>Total Price</th>"
                    + "<th></th><th></th>");
            out.println("</tr>"
                    + "</thead>");
            out.println("<tbody id='#myTable'>");
            
            for (int i = 0; i < order.size(); i++) {
                OrderBean c = order.get(i);
                out.println("<tr>");

                out.println("<td>" + c.getOrderId()+ "</td>");
                out.println("<td>" + c.getUserId()+ "</td>");
                out.println("<td>" + c.getSendDate()+ "</td>");
                out.println("<td>" + c.getOrderDate()+ "</td>");
                out.println("<td>" + c.getStatus()+ "</td>");
                if ("tbm".equalsIgnoreCase(c.getShippingOption())){
                    out.println("<td> In-Store Pickup </td>");
                }else {
                    out.println("<td> Delivery </td>");
                }
                out.println("<td>" + c.getTtlPrice()+ "</td>");
                out.println("<td><a href=\"order?action=staffViewOrderRecord&id=" + c.getOrderId()+ "\">View Record</a></td>");
                if("delivery".equalsIgnoreCase(c.getShippingOption()) && "Checking".equalsIgnoreCase(c.getStatus())){
                    out.println("<td><a href=\"order?action=staffSend&id=" + c.getOrderId()+ "\">Send</a></td>");
                }
                if("delivery".equalsIgnoreCase(c.getShippingOption()) && "Delivering".equalsIgnoreCase(c.getStatus())){
                    out.println("<td><a href=\"order?action=staffArrived&id=" + c.getOrderId()+ "\">Arrived</a></td>");
                }
                out.println("</tr>");
            }
            out.println("</tbody>"
                    + "</table>");
            out.println("</div>");
        %>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
    </body>
</html>
