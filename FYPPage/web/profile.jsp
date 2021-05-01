
<%@page import="ict.bean.UserInfo"%>
<%@page import="ict.db.UserDB"%>
<%@page import="java.util.ArrayList"%>
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
        <style>
            .profile {
                margin-top: 100px;
            }
            .container {
                margin-bottom: 100px;
            }
        </style>
    </head>
    <!-- body -->

    <!-- loader  -->


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
                                <h2>Profile</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:useBean id="user" scope="request" class="ict.bean.UserInfo" />
            <%
                String username = user.getUsername();
                String oldpwd = user.getPassword();
                String tel = user.getTel();
            %>
            <div class="profile">
                <div class="container">
                    <div class='center'>
                        <div class="card" style="width: 90%">
                            <div class="card-body">
                                <form method="post" action="handleUser" onsubmit="return  checkSubmit();">
                                    <input type="hidden" name="action" value="changeProfile">
                                    <h3 class="card-title">Username</h3>
                                    <p><input name="username" id="username" value="<%=username%>" readonly></p>
                                    <br/>

                                    <h3 class="card-title">Current Password</h3>
                                    <p><input type="password" name="oldpwd" id="oldpwd"></p>
                                    <br/>

                                    <h3 class="card-title">New Password</h3>
                                    <p><input type="password" name="newpwd" id="newpwd"></p>
                                    <br/>

                                    <h3 class="card-title">Telephone</h3>
                                    <p><input name="tel" id="tel" value="<%=tel%>"></p>
                                    <br/>

                                    <input type="submit" value="submit" class="btn btn-primary">
                                    <a href="Login?action=logout" class="btn btn-danger active" role="button" aria-pressed="true" style="float: right">
                                        LOG OUT 
                                    </a>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>

                <!--  footer --> 
                <%@include file="/footer.jsp" %>
                <!-- end footer -->
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

            function checkSubmit() {
                var username = document.getElementById("username").value;
                var oldpwd = document.getElementById("oldpwd").value;
                var newpwd = document.getElementById("newpwd").value;
                var tel = document.getElementById("tel").value;
                if (oldpwd == newpwd) {
                    alert("New password cannot be the same as the current password.");
                    return false;
                }
                if (oldpwd.length == 0 || newpwd.length == 0 || tel.length == 0) {
                    alert("Missing some information");
                    return false;
                }
            }
        </script> 
    </body>
</html>
