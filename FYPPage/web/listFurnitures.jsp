

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ict.db.*"%>
<%@page import="ict.bean.*"%>
<!DOCTYPE HTML >

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table  border="1">
            <tr><td>
                    <jsp:include page="menu.jsp" />
                </td>
                <td>

                    <%
                        ArrayList<FurnitureBean> customers
                                = (ArrayList<FurnitureBean>) request.getAttribute("customers");

                        out.println("<h1>Furnitures</h1>");
                        out.println("<table border='1'>");
                        out.println("<tr>");
                        out.println("<th>Furniture Id</th>  <th>Furniture Name</th><th>Price</th><th> Description</th >");
                        out.println("</tr>");
                        // loop through the customer array to display each customer record
                        for (int i = 0; i < customers.size(); i++) {
                            FurnitureBean c = customers.get(i);
                            out.println("<tr>");

                            out.println("<td>" + c.getFurnitureId() + "</td>");
                            out.println("<td>" + c.getName() + "</td>");
                            out.println("<td>" + c.getPrice() + "</td>");
                            out.println("<td>" + c.getModel() + "</td>");
                            out.println("<td>" + c.getDescription() + "</td>");
                            out.println("<td>" + c.getRating() + "</td>");
                            out.println("<td>" + c.getStock() + "</td>");
                            out.println("<td>" + c.getDetailDescription() + "</td>");

                            out.println("<td><a href=\"handleFurniture?action=delete&id=" + c.getFurnitureId() + "\">delete</a></td>");
                            out.println("<td><a href=\"handleFurniture?action=getEditFurniture&id=" + c.getFurnitureId() + "\">edit</a></td>");
                            out.println("<td><a href=\"handleFurniture?action=ShowOneFurniture&id=" + c.getFurnitureId() + "\">ItemPage</a></td>");
                            out.println("</tr>");

                        }
                        out.println("</table>");//getEditFurniture

                    %>



                </td>
            </tr>
        </table>
    </body>
</html>
