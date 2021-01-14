

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/form.css" rel="stylesheet">


    </head>
    <body>
        <jsp:useBean id="c" scope="request" class="ict.bean.FurnitureBean" />
        <%
            String getStock = Integer.toString(c.getStock());
            String readonly = c.getFurnitureId() != null ? "readonly" : "";
            
            String type = c.getFurnitureId() != null ? "edit furniture" : "add furniture";
            String id = c.getFurnitureId() != null ? c.getFurnitureId() : "";
            String name = c.getName() != null ? c.getName() : "";
            String price = c.getPrice() != null ? c.getPrice() : "";
            String model = c.getModel()!= null ? c.getModel() : "";
            String stock = getStock!= null ? getStock : "";
            String descrip = c.getDescription() != null ? c.getDescription() : "";
        %>
        <h1><%=type%></h1>
        <form  method="GET" action="handleEdit">
            <input type="hidden" name="action"  value="<%=type%>" />
            <%
                if (type.equals("edit")) {
            %>
            <p><label for="id">FurnitureId</label>
                <input <%=readonly%> type="text" name="id" id="id" value="<%=id%>"/></p>
                <%
                    }
                %>
            <p><label for="name">name</label><input type="text"  name="name" id="name" value="<%=name%>"/></p>
            <p><label for="price">Price</label><input type="text" name="price" value="<%=price%>"/></p>
            <p><label for="model">Model</label><input type="text" name="model" value="<%=model%>"/></p>
            <p><label for="stock">Stock</label><input type="text" name="stock" value="<%=stock%>"/></p>
            <p><label for="descrip">Description</label><input type="text"  name="descrip" id="name" value="<%=descrip%>"/></p>

            <p class="submit"><input type="submit" value="Submit" /></p>
        </form>
    </body>
</html>
