<%-- 
    Document   : index
    Created on : 2020年12月13日, 上午11:42:22
    Author     : solidcat
--%>

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
    <title>Sweethome</title>
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
     <!-- end loader -->

    <div class="wrapper">

       
        <div class="sidebar">
         <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components">
                
                <li class="active"> <a href="index.jsp">Home</a></li>
                 <li> <a href="about.jsp">About</a></li>
                                        <li> <a href="product.jsp">Product</a></li>
                                        <li> <a href="blog.jsp">Blog</a></li>
                                        <li> <a href="contact.jsp">Contact us</a></li>

            </ul>

        </nav>
      </div>

        <div id="content">
            <!-- header -->
            <header>
                <!-- header inner -->
                <div class="header">

                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-3 logo_section">
                                <div class="full">
                                    <div class="center-desk">
                                        <div class="logo">
                                            <a href="index.jsp"><img src="images/logo2.jpg" width="700" height="600" alt="#"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="right_header_info">
                                    <ul>
                                         <li>
                                            <a href="#"><img style="margin-right: 15px;" src="icon/5.png" width="35" height="35" alt="AR Function" /></a> <!-- for AR function -->
                                        </li>
                                        <li>
                                            <a href="#"><img style="margin-right: 15px;" src="icon/1.png" alt="#" /></a> <!-- for personal information -->
                                        </li>
                                     <!--   <li class="tytyu">   購物車顯示數量-->
                                       <li>     <a href="#"><img style="margin-right: 15px;" src="icon/2.png" alt="#" /></a></li> <!-- for going to the page which user like it or want to buy it -->
                                      <!--   </li> -->
                                        
                                        <li>
                                            <a href="product.jsp"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a> <!-- for going to buy product  -->
                                        </li>
                                       

                                        <li>
                                            <button type="button" id="sidebarCollapse">
                                                <img src="images/menu_icon.png" alt="#" />
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- end header inner -->
            </header>
            <!-- end header -->
            <section class="slider_section">
                <div class="banner_main">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 mapimg">
                                <div class="text-bg">
                                    <h1>The latest <br> <strong class="black_bold">furniture Design</strong><br></h1>
                                    <a href="product.jsp">Shop Now <i class='fa fa-angle-right'></i></a>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="text-img">
                                    <figure><img src="images/bg.jpg" /></figure>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- discount -->
            <div class="container">
                <div id="myCarousel" class="carousel slide banner_Client" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <h3>50% DISCOUNT<br> <strong class="black_nolmal">the latest collection</strong></h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/discount.jpg" /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <h3>Putting the <br> <strong class="black_nolmal">spotlight</strong></h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/discount6.jpg" /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <h3>Make your home feel <br> <strong class="black_nolmal"> Extra-festive!</strong></h3>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/discount5.jpg"  /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end discount -->
            <!-- trending -->
            <div class="trending">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <div class="title">
                                <h2> Design <strong class="black"> for Different Place</strong> </h2>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margitop">
                            <div class="trending-box">
                                <figure><img src="images/4.jpg" /></figure>
                                <h3>Outdoor</h3>

                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                            <div class="trending-box">
                                <figure><img src="images/5.jpg" /></figure>
                                <h3>Living Room</h3>

                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12 margitop">
                            <div class="trending-box">
                                <figure><img src="images/6.jpg" /></figure>
                                <h3>Bedroom</h3>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- end trending -->

            <!-- our brand -->
            <div class="brand">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2>Featured <strong class="black">Brands</strong></h2>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="brand-bg">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                            <div class="brand-box">
                                <i><img src="icon/p1.png"/></i>
                                <h3>Jane Lauren Design Chair</h3>
                                <span>HK$80.00</span>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 margintop">
                            <div class="brand-box">
                                <i><img src="icon/p2.png"/></i>
                                <h3>Jane Lauren Design Chair</h3>
                                <span>HK$120.00</span>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="brand-box">
                                <i><img src="icon/p3.png"/></i>
                                <h3>Jane Lauren Design Chair</h3>
                                <span>HK$250.00</span>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                            <div class="brand-box">
                                <i><img src="icon/p4.png"/></i>
                                <h3>Jane Lauren Design Chair</h3>
                                <span>HK$380.00</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end our brand -->
            <!-- map -->
            <div class="contact">
                <div class="container-fluid padddd">
                    <div class="row">
                        <div class="col-md-8 offset-md-2">
                            <div class="title">
                                <h2>Contact <strong class="black">Us</strong></h2>

                            </div>
                        </div>
                    </div>
                 
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 padddd">
                             <div class="map_section">
                     <div id="map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2610.095004610292!2d114.25492747149816!3d22.307073290445317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x340403efc96dcf71%3A0x155421d8c0f5fab8!2z6aaZ5riv55-l5bCI6Kit6KiI5a246Zmi!5e0!3m2!1szh-TW!2shk!4v1609218548942!5m2!1szh-TW!2shk" width="950" height="500" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                     </div>
                   </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 padddd">
                            
                            <form class="main_form">
                                <center><h2>Anything wants to tell us</h2></center> 
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Name" type="text" name="Name">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Email" type="text" name="Email">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <input class="form-control" placeholder="Phone" type="text" name="Phone">
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <textarea class="textarea" placeholder="Message" type="text" name="Message"></textarea>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <button class="send">Send</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end map -->
            <!--  footer -->
            <footer>
                <div class="footer">
                    <div class="container-fluid">
                        <div class="border1">
                            <div class="row">
                                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12">

                                    <img class="logo3" src="images/logo3.jpg" />
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
                                        <li> <a href="#"><i class="fa fa-facebook-f"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-instagram"></i></a></li>
                                        <li> <a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="container">
                         <div class="newtt">
                                    <p>Write down your email to subscibe and get the latest news!
                                        <br>Sweethome Smart Furniture</p>
                                </div>
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
                           
                            </div>
                        </div>

                    </div>
                  
                    <div class="copyright">
                        <p>Copyright 2021 All Right Reserved By <a href="#">Sweethome Smart Furniture™</a></p>
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
    <!-- sidebar -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {

            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#dismiss, .overlay').on('click', function() {
                $('#sidebar').removeClass('active');
                $('.overlay').removeClass('active');
            });

            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').addClass('active');
                $('.overlay').addClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });

        });
    </script>
    <script>
      // This example adds a marker to indicate the position of Bondi Beach in Sydney,
      // Australia.
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 11,
          center: {lat: 40.645037, lng: -73.880224},
          });

      var image = 'images/maps-and-flags.png';
      var beachMarker = new google.maps.Marker({
          position: {lat: 22.305866071284168, lng: 114.25401330635657},
          map: map,
          icon: image
        });
      }
    </script>
    <!-- google map js -->
    
   <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap"></script> -->
    
   
    <!-- end google map js --> 
    
</body>

</html>