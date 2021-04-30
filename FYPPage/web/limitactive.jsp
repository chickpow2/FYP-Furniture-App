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
<style>


form {
  border: 3px solid #f1f1f1;
  font-family: Arial;
}

.container {
  padding: 40px;
  background-color: #f1f1f1;
}

input[type=text], input[type=submit] {
  width: 100%;
  padding: 12px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

input[type=checkbox] {
  margin-top: 16px;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  border: none;
}

input[type=submit]:hover {
  opacity: 0.8;
}

input::-webkit-input-placeholder {
  
    color: #aab2bd;
    
    font-size: 24px;
}

h4 {
    margin-top: 20px;
    margin-bottom: 0;
}
</style>
   <!-- body -->
   <body class="main-layout contact_page">
      <!-- loader  -->
       
          
      </div>

     <div class="wrapper">


     

      <!-- end header -->
      
<div class="contactus">
   <div class="container-fluid">
            <div class="row">
               <div class="col-md-8 offset-md-2">
                  <div class="title">
                     <h2>Activate Limit Sell</h2>
                    
                  </div>
               </div>
            </div>
          </div>
</div>


<script>
  var d = new Date();
  var n = d.getMinutes();

    
function checkCode() {
    var check = document.getElementById('code').value;
    alert(n);
  if ( check !== "FYP00" + n){
      alert("You have enter the wrong activation code!\nPlease try again!");
      document.getElementById('code').value = '';
  }else{ 
      alert("You have success to enter the activation code!\nIt brings you to Limit Sell page!");
      window.location.href ='handleFurniture?action=limitproductList';
  };
}
</script>


 
  <div class="container">
    
  

  <div class="container" style="background-color:white">
    
    <input type="text"  style="width:100%;height:90px;font-size:18pt" placeholder="Please Input Your Activation Code" id="code" required>
    <label>
        <table border="0">
        </table>
    </label>
  </div>
    </div>
  <div class="container">
      <button onclick="checkCode()"   style="width:100%;height:50px;font-size : 20px; width: 100%; height: 100px;background-color:green;color:white">Activate Code</button>
  </div>

  


     

   </body>
</html>