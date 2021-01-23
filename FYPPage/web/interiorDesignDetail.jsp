<!DOCTYPE html>

<%@page import="ict.db.InteriorDesignDB"%>
<%@page import="ict.bean.InteriorDesignBean"%>
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
      <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
              <style>
            model-viewer{
                width:100%;
                height:600px;
                margin:0 auto;
outline:none

            }
        </style>
   </head>
   <!-- body -->
    
      <!-- loader  -->
          <jsp:useBean id="c" scope="request" class="ict.bean.InteriorDesignBean" /> 
          
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
                     <h2>Interior Design</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>

           
<model-viewer src="assets/1.glb" auto-rotate camera-controls></model-viewer>
                                            

  
<div class="about">
  <div class="container">
    <div class="row">
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="aboutimg">
        <h3><%out.print(c.getTitle());%></h3>
        <p><%out.print(c.getDescription());%></p>
        <a href="#">Read More</a>
        </div>
      </div>
      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
        <div class="aboutimg">
        <figure><img src="interior_design/<%out.print(c.getID());%>.jpg"/></figure>
        </div>
      </div>
    </div>
  </div>
</div>
      <%}%>
      <!--  footer --> 
      <%@include file="/footer.jsp" %>
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