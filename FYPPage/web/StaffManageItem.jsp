<%-- 
    Document   : StaffManageItem
    Created on : 2021/4/30, 下午 05:44:17
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Staff Mange Item</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="StaffMenu.jsp" />
        <jsp:useBean id="c" scope="request" class="ict.bean.FurnitureBean" />
        <%
            String action = c.getFurnitureId() != null ? "edit" : "add";
            String id = c.getFurnitureId() != null ? c.getFurnitureId() : "";
            String name = c.getName() != null ? c.getName() : "";
            String p = Integer.toString(c.getPrice());
            String price = p != null ? p : "";
            String model = c.getModel() != null ? c.getModel() : "";
            String r = Integer.toString(c.getRating());
            String rating = r != null ? r : "";
            String s = Integer.toString(c.getStock());
            String stock = s != null ? s : "";
            String type = c.getType() != null ? c.getType() : "";
            String descript = c.getDescription() != null ? c.getDescription() : "";
            String dDescript = c.getDetailDescription() != null ? c.getDetailDescription() : "";

            if (c.getPrice() == 0) {
                price = "";
            }
            if (c.getRating() == 0) {
                rating = "";
            }
            if (c.getStock() == 0) {
                stock = "";
            }
        %>
        <br/><br/>
        <div class="container">
            <%
                if ("edit".equalsIgnoreCase(action)) {
                    out.println("<h1>Edit Item</h1>");
                } else {
                    out.println("<h1>Add Item</h1>");
                }
            %>
            <form  method="POST" action="itemEdit">
                <input type="hidden" name="action"  value="<%=action%>" />

                <%
                    if (action.equals("edit")) {
                %>
                <div class="form-group">
                    <label>Item ID</label>
                    <input type="text" class="form-control" name="id" value="<%= id%>" readonly/>
                </div>
                <%
                    }
                %>
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" value="<%= name%>" />
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="text" class="form-control" name="price" value="<%= price%>" />
                </div>
                <div class="form-group">
                    <label>Model</label>
                    <input type="text" class="form-control" name="model" value="<%= model%>" />
                </div>
                <div class="form-group">
                    <label>Rating</label>
                    <input type="text" class="form-control" name="rating" value="<%= rating%>" readonly/>
                </div>
                <div class="form-group">
                    <label>Stock</label>
                    <input type="text" class="form-control" name="stock" value="<%= stock%>" />
                </div>
                <div class="form-group">
                    <label>Type</label>
                    <input type="text" class="form-control" name="type" value="<%= type%>" />
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control" rows="5"name="descript" ><%= descript%></textarea>
                </div>
                <div class="form-group">
                    <label>Detail Description</label>
                    <textarea class="form-control" rows="5"name="dDescript" ><%= dDescript%></textarea>
                </div>
                <button type="submit" class="btn btn-outline-secondary">Submit</button>
            </form>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
    </body>
</html>
