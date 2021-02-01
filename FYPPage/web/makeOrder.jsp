<%-- 
    Document   : makeOrder
    Created on : 2021年1月30日, 下午07:06:09
    Author     : teen
--%>

<%@page import="ict.bean.ShoppingCartBean"%>
<%@page import="ict.bean.FurnitureBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                                    <h2>Continue Purchase</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ourproduct">
                    <div class="container">
                        <div class="row product_style_3">
                            <div class='container'>       
                                <br>
                            </div>
                            <div class='center'>
                                    <div class="card" style="width: 90%">
                                        <div class="card-body">
                                            <h3 class="card-title">Shipping Orption</h3>
                                            <p>
                                                <input type="radio" name="shipping" id="shipping1" value="tbm">Take By Myself
                                                <input type="radio" name="shipping" id="shipping2" value="delivery">Delivery
                                            </p>
                                            <p id="placeAddress"></p>
                                            <hr style="width: 80%;"/>
                                            <h3 class="card-title">Payment</h3>
                                            <p>Credit card number *<br><input type="text" name="ccnum" id="ccnum" style="width: 90%"/></p>
                                            <p>
                                                Expiry date *<br/>
                                                <select name="month" id="month" required>
                                                    <option value="January">January</option>
                                                    <option value="February">February</option>
                                                    <option value="March">March</option>
                                                    <option value="April">April</option>
                                                    <option value="May">May</option>
                                                    <option value="June">June</option>
                                                    <option value="July">July</option>
                                                    <option value="August">August</option>
                                                    <option value="September">September</option>
                                                    <option value="October">October</option>
                                                    <option value="November">November</option>
                                                    <option value="December">December</option>
                                                </select>
                                                <input type="text" name="year" id="year" placeholder="Year" onkeypress="return onlyNumberKey(event)">
                                            </p>
                                            <p>
                                                CVC/CVV2 * <br>
                                                <input type="text" name="cvc" id="cvc" onkeypress="return onlyNumberKey(event)">
                                            </p>
                                            <p>
                                                Cardholders name * <br>
                                                <input type="text" name="ccname" id="ccname" onkeypress="return onlyNumberKey(event)" style="width: 90%">
                                            </p>
                                        </div>
                                    </div>
                            </div>
                            <br><a href="handleFurniture?action=receipt" class="btn btn-primary" onclick="return  checkSubmit();">Purchase</a></div><br>
                    </div>
                </div>
            </div>
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

        $(document).ready(function () {
            $('#shipping2').click(function () {
                $("#placeAddress").html("<h5>Address :</h5><p><input type='text' id='address' name='address' /></p>");
            });
            $('#shipping1').click(function () {
                $("#placeAddress").html("<p></p>");
            });
        });

        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : evt.keyCode
            if (charCode > 31 && (charCode < 48 || charCode > 57))
                return false;
            return true;
        }
        function checkSubmit() {
            var shipping1 = document.getElementById("shipping1");
            var shipping2 = document.getElementById("shipping2");
            var address = document.getElementById("address");
            var ccnum = document.getElementById("ccnum");
            var month = document.getElementById("month");
            var year = document.getElementById("year");
            var cvc = document.getElementById("cvc");
            var ccname = document.getElementById("ccname");
            if (shipping1.checked === false && shipping2.checked === false || shipping2.checked === true && address.value.length === 0
                    || ccnum.value.length === 0 || year.value.length === 0 || cvc.value.length === 0 || ccname.value.length === 0) {
                alert("Missing some information");
                return false;
            } 
        }
    </script>
</body>
</html>
