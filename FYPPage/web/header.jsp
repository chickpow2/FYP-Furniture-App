           
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


<style>


[class*="BT"]{width:260px;display:block;position:absolute;padding:0;border-color:#0fbbad;margin:0 0 10px;line-height:6px;border-style:solid;left:50%;margin-left:-125px;height:60px;}
[class*="BT"] hover{position:absolute;z-index:5;width:246px;margin-left:-370px;  transition: all 0.3s ease-out 0s;    background: -moz-linear-gradient(45deg,  rgba(255,255,255,0) 0%, rgba(135,135,135,0.38) 50%, rgba(255,255,255,0) 100%); /* FF3.6+ */background: -webkit-gradient(linear, left bottom, right top, color-stop(0%,rgba(255,255,255,0)), color-stop(50%,rgba(135,135,135,0.38)), color-stop(100%,rgba(255,255,255,0))); /* Chrome,Safari4+ */background: -webkit-linear-gradient(45deg,  rgba(255,255,255,0) 0%,rgba(135,135,135,0.38) 50%,rgba(255,255,255,0) 100%); /* Chrome10+,Safari5.1+ */background: -o-linear-gradient(45deg,  rgba(255,255,255,0) 0%,rgba(135,135,135,0.38) 50%,rgba(255,255,255,0) 100%); /* Opera 11.10+ */background: -ms-linear-gradient(45deg,  rgba(255,255,255,0) 0%,rgba(135,135,135,0.38) 50%,rgba(255,255,255,0) 100%); /* IE10+ */background: linear-gradient(45deg,  rgba(255,255,255,0) 0%,rgba(135,135,135,0.38) 50%,rgba(255,255,255,0) 100%); /* W3C */filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00ffffff', endColorstr='#00ffffff',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */  height:60px;margin-top:-30px;}
[class*="OH"]{overflow:hidden;}
[class*="BR"]{border-width:2px;}
[class*="R6"]{border-radius:6px;}
[class*="NF"]{background:transparent;}
[class*="BT"]:hover hover{  margin-left:123px;}
[class*="TU"]{text-transform:uppercase;}
[class*="PT"]{cursor:pointer;}
[class*="BT"] span{  position:absolute;  width:200px;  margin-left:-100px;  z-index:3;}
canvas{margin: 0;padding: 0;display:block;position:absolute;margin-top:-30px;}
</style>
<div class="sidebar">
    <!-- Sidebar  -->
    <nav id="sidebar">

        <div id="dismiss">
            <i class="fa fa-arrow-left"></i>
        </div>

        <ul class="list-unstyled components">

            <li class="active"> <a href="handleFurniture?action=home">Home</a></li>
            <li> <a href="about.jsp">About</a></li>
            <li> <a href="handleFurniture?action=productList">Product</a></li>
            <li> <a href="handleFurniture?action=shoppingCart">Shopping Cart</a></li>
            <li> <a href="blog.jsp">Blog</a></li>
            <li> <a href="handleInterior?action=interiorDesign">Interior Design</a></li>
            <li> <a href="maplocate.jsp">Shop Location</a></li>
            <li> <a href="subscribe.jsp">Subscribe Us</a></li>

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
                                <div class="logo"> <a href="handleFurniture?action=home"><img src="images/MFL_h.png" alt="#"></a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="right_header_info">
                            <ul>         
                                <li>
                                <p>
                                <button id="button" class="BT-OH-BR-R6-NF-FH-FP-TU-PT" style="background-color:#FFFF00;position:relative;top:65px;left:-130px;font-size:15px" onclick="window.location.href='handleFurniture?action=limitproductList'">
                                    <canvas id="canvas" width="246" height="60"></canvas> 
                                    <hover></hover>
                                    <span>Limit Sell Here !!</span>
                                </button>
                              </p>    
                                </li>
                               <!-- <li>  limit product logo clear-->
                               <!--     <a href="handleFurniture?action=limitproductList"><img style="margin-right: 15px;" src="icon/20sale.png" width="100" height="100" alt="20%off" /></a> --><!-- for AR function -->
                             <!--   </li>-->
                                

                                <li><a href="login.jsp"><img style="margin-right: 15px;" src="icon/1.png" alt="#" /></a></li>

                                <li><a href="handleFurniture?action=shoppingCart"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a></li>

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
</div>