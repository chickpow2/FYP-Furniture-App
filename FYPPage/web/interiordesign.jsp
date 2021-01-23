<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
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
   </head>
   <!-- body -->
    
      <!-- loader  -->
       
          
      </div>

     <div class="wrapper">

   <%@include file="/header.jsp" %>
     

    
      <!-- end header -->
     <div class="contactus">
   <div class="container-fluid">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>interior design</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>
<div class="blog">
  <div class="container">
    <div class="row">


                                           <%
                    ArrayList<InteriorDesignBean> interior = (ArrayList<InteriorDesignBean>) request.getAttribute("interior");%>
                                    <%  for (int i = 0; i < interior.size(); i++) {
                                    InteriorDesignBean c = interior.get(i);%>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="news-box">
                        <a href="handleInterior?action=interiorDesignDetail&id=<%out.print(c.getID());%>"><figure><img src="interior_design/<%out.print(c.getID());%>.jpg" alt="img" /></figure>
                        <h3><%out.print(c.getDescription());%></h3>
                        <span> March 20</span><span>Comment</span>
                        <p><%out.print(c.getTitle());%></p></a>
                    </div>
                </div>
                            <%}%>
    </div>
  </div>
</div>
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