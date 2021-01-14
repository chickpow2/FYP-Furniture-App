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

      <!-- end loader --> 
        <%@include file="/header.jsp" %>
     
    
       <div id="content">
      <!-- end header -->
      <div class="contactus">
   <div class="container-fluid">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>About</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>



<div class="about">
  <div class="container">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="aboutimg">
        <h3>About us</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi</p>
        <a href="#">Read More</a>
        </div>
      </div>
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="aboutimg">
        <figure><img src="images/Avangarda_klu.jpg"/></figure>
        </div>
      </div>
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
                         <li> <a href="handleFurniture?action=productList">Product</a></li>
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




      <script>
         $(document).ready(function(){
         $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         
      </script> 
   </body>
</html>