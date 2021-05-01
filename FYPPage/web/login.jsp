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
        <style>
            .form_center{
                position: absolute;
                top:  50%; 
                left: 50%;
                transform: translate(-50%,-50%);
            }
        </style>
        <script>
            function checking() {
                var email = document.getElementById("email").value;
                var pwd = document.getElementById("pwd").value;

                if (email.length === 0 || pwd.length === 0) {
                    alert("Email Adress And Password Cannot be Empty !");
                } else if (email.length === 0) {
                    alert("Email Adress Cannot be Empty !");
                } else if (pwd.length === 0) {
                    alert("Password Cannot be Empty !");
                } else {
                    document.getElementById("login").submit();
                }

            }
        </script>
    </head>
    <body class="main-layout">

        <form id="login" action="Login" method="POST" class="form_center card">
            <div class="container">
                <input type="hidden" name="action" value="authenticate"/>
                <center><img src="images/MFL_h.png" alt="#"></center>
                <div class="card-body">
                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="text" class="form-control" id="email" name="username" placeholder="Email Address">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Password">
                    </div>
                    <button type="button" class="btn btn-primary"onclick="return checking()" >Login</button>
                    <a href="register.jsp" class="btn btn-primary active" role="button" aria-pressed="true" style="float: right">
                        Don't Have A Account? Register
                    </a>
                </div>
            </div>
        </form>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
    </body>
</html>
