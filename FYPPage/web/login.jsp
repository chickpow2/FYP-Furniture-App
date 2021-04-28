<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
        <style>
            .form_center{
                position: absolute;
                top:  50%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 40%;
                height: 40%;
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
    <body>

        <form id="login" action="Login" method="POST" class="form_center card">
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
        </form>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
    </body>
</html>
