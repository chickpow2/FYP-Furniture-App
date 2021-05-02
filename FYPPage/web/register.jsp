<%-- 
    Document   : register
    Created on : 2021/4/27, 下午 02:53:54
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
        <style>
            .form_center{
                position: absolute;
                top:  50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
        </style>
    </head>
    <body>
        <form id="register" action="Register" method="POST" class="form_center card">
            <div class="container">
                <input type="hidden" name="action" value="register"/>
                <center><a href="handleFurniture?action=home" ><img src="images/MFL_h.png" alt="#"></a></center>
                <div class="card-body">
                    <div class="form-group">
                        <label>Email address</label>
                        <input type="email" class="form-control" id="email" name="username" placeholder="Email Adress">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" class="form-control" id="pwd" name="password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" class="form-control" id="cpwd" placeholder="Confirm Password">
                    </div>
                    <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone Number">
                    </div>
                    <button type="button" class="btn btn-primary" onclick="return checking()" >Register</button>
                    <a href="login.jsp" class="btn btn-primary active" role="button" aria-pressed="true" style="float: right">
                        Already Have A Account? Login
                    </a>
                </div>
            </div>
        </form>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/jquery-3.4.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap-4.4.1.js"></script>
        <script>
                        function checking() {
                            var email = document.getElementById("email").value;
                            var emailInclude = email.includes("@gmail.com");
                            var pwd = document.getElementById("pwd").value;
                            var cpwd = document.getElementById("cpwd").value;
                            var phone = document.getElementById("phone").value;

                            if (email.length === 0 || pwd.length === 0 || phone.length === 0) {
                                alert("Information Cannot be Empty !");
                            } else if (pwd !== cpwd) {
                                alert("Password Mismatch !");
                            } else if (!emailInclude) {
                                alert("Invalid Email !");
                            } else {
                                document.getElementById("register").submit();
                            }

                        }
        </script>
    </body>
</html>
