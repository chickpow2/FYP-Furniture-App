<%@page import="java.util.ArrayList"%>
<%@page import="ict.bean.FurnitureBean"%>
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
        <title>niture</title>
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
    <body class="main-layout">
        <!-- loader  -->
        <div class="loader_bg">
            <div class="loader"><img src="images/loading.gif" alt="#" /></div>
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
                                    <h2>Our Product</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ourproduct">
                    <div class="container">
                        <div class="row product_style_3" ">
                            <%
                                ArrayList<FurnitureBean> furnitureList = (ArrayList<FurnitureBean>) request.getAttribute("furnitureList");
                            %>
                            <!-- product -->
                            
                                    
                            <%
                                for (int i = 0; i < furnitureList.size(); i++) {
                                    out.println("<div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                            + "<div class='full product'>"
                                            + "<div class='product_img'>"
                                            + "<div class='center'>"
                                            + "<img src='icon/p1.png' alt='#'/>"
                                            + "<div class='overlay_hover'>"
                                            + "<a class='add-bt' href='product_detail3.jsp'>+ Add to cart</a>"
                                            + "</div></div></div>"
                                            + "<div class='product_detail text_align_center'>");
                                    out.println("<p class='product_price'>$"+furnitureList.get(i).getPrice() +"<span class='old_price'>$679.89</span></p>");
                                    out.println("<p class='product_descr'>"+furnitureList.get(i).getName()+"</p>");
                                    out.println("</div></div></div>");
                                }
                            %>
                            <!-- end product -->

                        </div>
                    </div>
                </div>

                <!--  footer --> 
                <footer>
                    <div class="footer">
                        <div class="container-fluid">
                            <div class="border1">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">

                                        <img class="logo1" src="images/logo1.jpg"/>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">


                                        <ul class="lik">
                                            <li> <a href="index.jsp">Home</a></li>
                                            <li> <a href="about.jsp">About</a></li>
                                            <li> <a href="product.jsp">Product</a></li>
                                            <li> <a href="blog.jsp">Blog</a></li>
                                            <li> <a href="contact.jsp">Contact us</a></li>
                                        </ul>
                                    </div>

                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">
                                        <ul class="sociel">
                                            <li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>



                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="new">
                                        <h3>Newsletter</h3>
                                        <form class="newtetter">
                                            <input class="tetter" placeholder="Your email" type="text" name="Your email">
                                            <button class="submit">Subscribe</button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="newtt">
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point<br> of using Lorem I</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="copyright">
                            <p>Copyright 2019 All Right Reserved By <a href="https://html.design/">Free html Templates</a></p>
                        </div>
                    </div>

                </footer>
                <!-- end footer -->
            </div>

        </div>

        <div class="overlay"></div>

        <!-- Javascript files--> 
        <script src="js/jquery.min.js"></script> 
        <script src="js/popper.min.js"></script> 
        <script src="js/bootstrap.bundle.min.js"></script> 
        <script src="js/jquery-3.0.0.min.js"></script> 
        <script src="js/plugin.js"></script> 
        <!-- sidebar --> 
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script> 
        <script src="js/custom.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#sidebar").mCustomScrollbar({
                    theme: "minimal"
                });

                $('#dismiss, .overlay').on('click', function () {
                    $('#sidebar').removeClass('active');
                    $('.overlay').removeClass('active');
                });

                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').addClass('active');
                    $('.overlay').addClass('active');
                    $('.collapse.in').toggleClass('in');
                    $('a[aria-expanded=true]').attr('aria-expanded', 'false');
                });
            });
        </script>


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

        </script> 
    </body>
</html>