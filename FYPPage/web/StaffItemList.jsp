<%-- 
    Document   : ManageItem
    Created on : 2021/4/30, 下午 04:08:55
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ict.db.*"%>
<%@page import="ict.bean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Item List</title>
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
            ArrayList<FurnitureBean> furnitures
                    = (ArrayList<FurnitureBean>) request.getAttribute("furnitures");
            out.println("<div class='divCenter'>");
            out.println("<h1>Staff Item List</h1>");
            out.println("<h4><a href=\"StaffManageItem.jsp\">ADD</a></h4>");
            out.println("<table class='table table-striped'>");
            out.println("<thead class='thead-dark'>"
                    + "<tr>");
            out.println("<th>ID</th>"
                    + "<th>Name</th>"
                    + "<th>Price</th >"
                    + "<th>Model</th>"
                    + "<th>Rating</th >"
                    + "<th>Stock</th >"
                    + "<th>Type</th>"
                    + "<th>Image</th>"
                    + "<th>Description</th>"
                    + "<th>Detail Description</th>"
                    + "<th></th>");
            out.println("</tr>"
                    + "</thead>");
            out.println("<tbody id='#myTable'>");
            // loop through the customer array to display each customer record
            for (int i = 0; i < furnitures.size(); i++) {
                FurnitureBean c = furnitures.get(i);
                out.println("<tr>");

                out.println("<td>" + c.getFurnitureId() + "</td>");
                out.println("<td>" + c.getName() + "</td>");
                out.println("<td>" + c.getPrice() + "</td>");
                out.println("<td>" + c.getModel() + "</td>");
                out.println("<td>" + c.getRating() + "</td>");
                out.println("<td>" + c.getStock() + "</td>");
                out.println("<td>" + c.getType() + "</td>");
                out.println("<td>" + c.getImage() + "</td>");
                out.println("<td>" + c.getDescription() + "</td>");
                out.println("<td>" + c.getDetailDescription() + "</td>");
                out.println("<td><a href=\"handleFurniture?action=editFurnitures&id=" + c.getFurnitureId() + "\">Edit</a></td>");

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
