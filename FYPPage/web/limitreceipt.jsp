<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<%@page import="java.util.ArrayList"%>
<%@page import="ict.db.*"%>
<%@page import="ict.bean.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
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
    </head>
    <!-- body -->

    <!-- loader  -->
<style>
  h2 .red-text {
    color: red;
  }
</style>

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
                                    <h2>Receipt</h2>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                    ArrayList<FurnitureBean> furnitureList = (ArrayList<FurnitureBean>) request.getAttribute("Furnitures");
                    ArrayList<ShoppingCartBean> ShoppingCartList = (ArrayList<ShoppingCartBean>) request.getAttribute("orderList");
                %>
                <div class="ourproduct">
                    <div class="container">
                        <div class="row product_style_3">
                            <!-- product -->
                            <div class='container'>       
                                <br>
                            </div> 
                            <div class='container'> 
                            <p>Order ID : <label>0000000019</label></p>
                            <p>User ID : <label>abc</label></p>
                            <%
                                Date date = new Date();
                                SimpleDateFormat od = new SimpleDateFormat("dd/MM/yyyy");
                                SimpleDateFormat sd = new SimpleDateFormat("dd/MM/yyyy");
                                out.print("<p>Order Date : <label>" + od.format(date) + "</label></p>");
                                try {
                                    date = sd.parse(od.format(date));
                                    long t = date.getTime() + 7 * 24 * 60 * 60 * 1000;
                                    date.setTime(t);
                                    out.println("<p>Expected Send Date : <label>" + sd.format(date) + "</label></p></div> ");
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                
                                int total = 0;
                                for (int i = 0; i < ShoppingCartList.size(); i++) {
                                    out.println("<br><div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                            + "<div class='full product'>"
                                            + "<div class='product_img'>"
                                            + "<div class='center'>"
                                            + "<img src=\"furniture/" + ShoppingCartList.get(i).getFurnitureId() + ".png\" alt='#'/>"
                                            + "<div class='overlay_hover'>"
                                           
                                            + "</div></div></div>"
                                            + "<div class='product_detail text_align_center'>");
                                    out.println("<p style='color:red;font-size:1vw'><b>After 20% OFF!</b></p>");
                                    out.println("<p class='product_price'>$" + String.format("%.1f",furnitureList.get(Integer.parseInt(ShoppingCartList.get(i).getFurnitureId()) - 1).getPrice()*0.8));
                                    out.println("<p class='product_descr'>" + furnitureList.get(Integer.parseInt(ShoppingCartList.get(i).getFurnitureId()) - 1).getName() + "</p>");
                                    total += furnitureList.get(Integer.parseInt(ShoppingCartList.get(i).getFurnitureId()) - 1).getPrice();
                                    out.println("</div></div></div>");
                                }
                            %>
                            <br><div class='container'><% out.println("$Total: " + String.format("%.1f",total*0.8) + " (With Promo Code)<br>");%>
                                <br><div><br>
                            <!-- end product -->
                        </div>
                    </div>
                </div>
               
                        </div>                 
                                <center><a href="handleFurniture?action=home" class="btn btn-primary">Confirm and Back to Main Page</a></center><br>
                                
                                
                <!--  footer --> 
                <%@include file="/footer.jsp" %>
                <!-- end footer -->
        </div>
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
