<%@page import="java.util.ArrayList"%>
<%@page import="ict.bean.FurnitureBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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


</div>

<div class="wrapper">

    <%@include file="/header.jsp" %>

    <div id="content">

        <!-- end header -->
        <div class="contactus">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="title">
                            <h2>Shopping Cart</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            ArrayList<FurnitureBean> furnitureList = (ArrayList<FurnitureBean>) request.getAttribute("furnitureList");
        %>
        <div class="ourproduct">
            <div class="container">
                <div class="row product_style_3" ">
                    <!-- product -->

                    <div class='container'>       



                        <br>




                    </div>                   



                    <%
                        // out.println("<div class='container'>");
                        //out.println("<form  method=\"GET\" action=\"handleFurniture?action=search1\"><label>Search :</label>&nbsp<input id=\"search\" name=\"search\" />&nbsp <input type=\"submit\" class=\"btn btn-primary\" value=\"search\"/></form></div><br>");
                        for (int i = 0; i < furnitureList.size(); i++) {
                            out.println("<br><div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                    + "<div class='full product'>"
                                    + "<div class='product_img'>"
                                    + "<div class='center'>"
                                    + "<img src=\"furniture/" + furnitureList.get(i).getFurnitureId() + ".png\" alt='#'/>"
                                    + "<div class='overlay_hover'>"
                                    + "<a href=\"handleFurniture?action=ShowOneFurniture&id=" + furnitureList.get(i).getFurnitureId() + "\"</a>"
                                    + "</div></div></div>"
                                    + "<div class='product_detail text_align_center'>");
                            out.println("<p class='product_price'>$" + furnitureList.get(i).getPrice());
                            out.println("<p class='product_descr'>" + furnitureList.get(i).getName() + "</p>");
                            out.println("</div></div></div>");
                        }
                    %>  
                    <div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>
                    <div class='full product'>
                    <div class='product_img'>
                    <div class='center'>
                        
<img src="icon/plus.png" alt='#'/>
<div class='overlay_hover'>
    <a href="handleFurniture?action=productList" class='add-bt'>Continue Shopping</a>
</div></div></div></div></div>
                    <!-- end product -->

                </div>
            </div>
        </div>

        <!--  footer --> 
        <%@include file="/footer.jsp" %>
        <!-- end footer -->
    </div>

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