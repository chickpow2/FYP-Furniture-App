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
            </head>
    <!-- body -->

    <!-- loader  -->
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

</div>
<!-- Here is a independent page for demo plz dont move it -->
<div class="wrapper">

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
                                    <a href="handleFurniture?action=limitproductList"><img style="margin-right: 15px;" src="icon/20sale.png" width="100" height="100" alt="20%off" /></a> <!-- for AR function -->
                                </li>
                                
                                <li>
                                    <a href="#"><img style="margin-right: 15px;" src="icon/5.png" width="35" height="35" alt="AR Function" /></a> <!-- for AR function -->
                                </li>
                                <li><a href="login.jsp"><img style="margin-right: 15px;" src="icon/1.png" alt="#" /></a></li>

                                <li><a href="limitShoppingCart.jsp"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a></li>

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

    <div id="content">

        <!-- end header -->
        <div class="contactus">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="title">
                            <h2>Limit Product</h2>
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
                
                <div class="row product_style_3" >
                    <!-- product -->

                    <div class='container'>       
                        <form  method="GET" action="handleFurniture?action=limitsearch">
                            <label><strong class="black">Search :</strong></label>
                            <input type="hidden" name="action" value="limitsearch"/>
                            <input name="search"  type="text" value=""/>&nbsp
                            <input type="submit" class="btn btn-primary" value="search"/>
                        </form>

                        <br><label><strong class="black">Category</strong></label><br>
                        <div class="list-group" id="list-tab" name ="type" role="tablist">
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=limittype&type=sofa"  value="sofa">Sofa</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=limittype&type=table" role="tab" aria-controls="profile">Table</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=limittype&type=chair" role="tab" aria-controls="messages">Chair</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=limittype&type=electronic" role="tab" aria-controls="settings">Electronics</a>
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=limittype&type=other" role="tab" aria-controls="settings">Other</a>
                        </div>
                        <br>




                    </div>                   



                    <%
                        // out.println("<div class='container'>");
                        //out.println("<form  method=\"GET\" action=\"handleFurniture?action=search1\"><label>Search :</label>&nbsp<input id=\"search\" name=\"search\" />&nbsp <input type=\"submit\" class=\"btn btn-primary\" value=\"search\"/></form></div><br>");
                        for (int i = 0; i < furnitureList.size(); i++) {
                            out.println("<tr><br><div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                    + "<div class='full product'>"
                                    + "<div class='product_img'>"
                                    + "<div class='center'>"
                                    + "<img src=\"furniture/" + furnitureList.get(i).getFurnitureId() + ".png\" alt='#'/>"
                                    + "<div class='overlay_hover'>"
                                    + "<a class='add-bt' href=\"handleFurniture?action=limitproductList" +  "\">Add to cart<a href=\"handleFurniture?action=limitShowOneFurniture&id="  + furnitureList.get(i).getFurnitureId() + "\"</a>"
                                   // 備用+ "<a class='add-bt' href=\"handleFurniture?action=putToCart&id=" + furnitureList.get(i).getFurnitureId() + "\">Add to cart<a href=\"handleFurniture?action=limitShowOneFurniture&id=" + furnitureList.get(i).getFurnitureId() + "\"</a>"
                                    + "</div></div></div>"  
                                    + "<div class='product_detail text_align_center'>");
                            out.println("<p style='color:red;font-size:1vw'><b>After 20%!</b></p>");
                            
                            out.println("<p class='product_price'>$" + Math.floor(Integer.parseInt (furnitureList.get(i).getPrice())*0.8 ));
                          //  out.println("<p class='product_price'>$" + furnitureList.get(i).getPrice()); //Normal prize
                            out.println("<p class='product_descr'>" + furnitureList.get(i).getName() + "</p>");
                            out.println("</div></div></div></tr>");
                        }
                    %>  


                    <!-- end product -->

                </div>
          </div>
 </div>
                    
        <!--  footer (Dont remove this part cause all of the logo and words of footer will going to left and idk why happen that)--> 
        
            <footer>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
            <li style="display:none;"> <a href="about.jsp">About</a></li>
            </div>
            </footer>
        <!-- end footer (Dont remove this part cause all of the logo and words of footer will going to left and idk why happen that)-->
        
        <%@include file="/footer.jsp" %>
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