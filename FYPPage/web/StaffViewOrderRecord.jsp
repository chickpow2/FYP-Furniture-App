<%@page import="ict.bean.FurnitureBean"%>
<%@page import="ict.bean.OrderRecordBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <%
            ArrayList<OrderRecordBean> order = (ArrayList<OrderRecordBean>) request.getAttribute("order");
            ArrayList<FurnitureBean> furn = (ArrayList<FurnitureBean>) request.getAttribute("furnitures");

            out.println("<div class='divCenter'>");
            out.println("<h1>Staff Item List</h1>");
            out.println("<table class='table table-striped'>");
            out.println("<thead class='thead-dark'>"
                    + "<tr>");
            out.println("<th>Order ID</th>"
                    + "<th>Furniture ID</th>"
                    + "<th>Furniture Name</th>");
            out.println("</tr>"
                    + "</thead>");
            out.println("<tbody id='#myTable'>");

            for (int i = 0; i < order.size(); i++) {
                OrderRecordBean c = order.get(i);
                out.println("<tr>");

                out.println("<td>" + c.getOrderId() + "</td>");
                out.println("<td>" + c.getFurnId() + "</td>");
                out.println("<td>" + furn.get(Integer.parseInt(c.getFurnId()) - 1).getName() + "</td>");

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
