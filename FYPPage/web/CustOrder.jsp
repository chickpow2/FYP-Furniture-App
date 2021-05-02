<%@page import="ict.bean.OrderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Modern Furniture</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
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
<!-- body -->

<!-- loader  -->


<body>

    <div class="wrapper">

        <%@include file="/header.jsp" %>

        <div id="content">

            <!-- end header -->
            <div class="contactus">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <div class="title">
                                <h2>Customer Order List</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <%
                ArrayList<OrderBean> order = (ArrayList<OrderBean>) request.getAttribute("Order");
                out.println("<div class='divCenter'>");
                out.println("<table class='table table-striped'>");
                out.println("<thead class='thead-dark'>"
                        + "<tr>");
                out.println("<th>Order ID</th>"
                        + "<th>User ID</th>"
                        + "<th>Send Date</th >"
                        + "<th>Order Date</th>"
                        + "<th>Status</th >"
                        + "<th>Shipping Option</th >"
                        + "<th>Address</th >"
                        + "<th>Total Price</th>"
                        + "<th></th>");
                out.println("</tr>"
                        + "</thead>");
                out.println("<tbody id='#myTable'>");

                for (int i = 0; i < order.size(); i++) {
                    OrderBean c = order.get(i);
                    out.println("<tr>");

                    out.println("<td>" + c.getOrderId() + "</td>");
                    out.println("<td>" + c.getUserId() + "</td>");
                    if (c.getSendDate() != null) {
                        out.println("<td>" + c.getSendDate() + "</td>");
                    } else {
                        out.println("<td> N/A </td>");
                    }
                    out.println("<td>" + c.getOrderDate() + "</td>");
                    out.println("<td>" + c.getStatus() + "</td>");
                    if ("tbm".equalsIgnoreCase(c.getShippingOption())) {
                        out.println("<td> In-Store Pickup </td>");
                    } else {
                        out.println("<td> Delivery </td>");
                    }
                    if (c.getAddress() != null) {
                        out.println("<td>" + c.getAddress() + "</td>");
                    } else {
                        out.println("<td> N/A </td>");
                    }
                    out.println("<td>" + c.getTtlPrice() + "</td>");
                                    out.println("<td><a href=\"order?action=receipt&id=" + c.getOrderId()+ "\">View Record</a></td>");
                    out.println("</tr>");
                }
                
                out.println("</tbody>"
                        + "</table>");
                out.println("</div>");
            %>
            <%@include file="/footer.jsp" %>
            <!-- end footer -->
        </div>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });

            $(document).ready(function () {
                $('#search').keyup(function () {
                    $('tr:gt(0)').hide().filter(":contains('" + $('#search').val() + "')").show();
                });
            });
        </script> 

</body>
</html>
