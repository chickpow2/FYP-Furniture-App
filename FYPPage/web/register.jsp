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
        <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
        <style>
            .form_center{
                position: absolute;
                top:  50%;
                left: 50%;
                transform: translate(-50%,-50%);
                width: 40%;
                height: 55%;
            }
        </style>
    </head>
    <body>
        <form action="Register" method="POST" class="form_center card">
            <input type="hidden" name="action" value="register"/>
            <center><img src="images/MFL_h.png" alt="#"></center>
            <div class="card-body">
                <div class="form-group">
                    <label>Email address</label>
                    <input type="text" class="form-control" name="username" placeholder="Username">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" placeholder="Confirm Password">
                </div>
                <div class="form-group">
                    <label>Phone Number</label>
                    <input type="text" class="form-control" name="phone" placeholder="Phone Number">
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
                <a href="login.jsp" class="btn btn-primary active" role="button" aria-pressed="true" style="float: right">
                    Already Have A Account? Login
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
