

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
            String type = c.getFurnitureId() != null ? "edit" : "add";

        %>
        <h1><%=type%></h1>
        <form  method="GET" action="handleEdit">
            <input type="hidden" name="action"  value="<%=type%>" />

            <p><label for="id">id</label> <input <%=c.getFurnitureId() != null ? "readonly" : ""%>           type="text" name="id" id="id" value="<%=c.getFurnitureId() != null ? c.getFurnitureId() : ""%>"/></p>
            <p><label for="name">name</label><input type="text"  name="name" id="name" value="<%=c.getName() != null ? c.getName() : ""%>"/></p>
            <p><label for="tel">tel</label><input name="tel"  type="text" value="<%=c.getPrice() != null ? c.getPrice() : ""%>"/></p>
                       <p><label for="tel">tel</label><input name="tel"  type="text" value="<%=c.getDescription() != null ? c.getDescription() : ""%>"/></p>


            <p class="submit"><input type="submit" value="Submit" /></p>



        </form>

    </body>
</html>
