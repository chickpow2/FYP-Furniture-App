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



    <!-- end header -->
    <div class="contactus">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <div class="title">
                        <h2>Blog</h2>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blog">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="news-box">
                        <figure><img src="images/blol.jpg" alt="img" /></figure>
                        <h3>Wood Table</h3>
                        <span> March 20</span><span>Comment</span>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters </p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="news-box">
                        <figure><img src="furniture/20.png" alt="img" /></figure>
                        <h3>LISABO</h3>
                        <span> March 20</span><span>Comment</span>
                        <p>Gateleg tables have been around for centuries ? with the space-saving design it?s no wonder why. We gave this table a straightforward, Scandinavian look and added a few drawers for cutlery and napkins.
                            Table with drop-leaves seats 2-4; makes it possible to adjust the table size according to need.</p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">
                    <div class="news-box">
                        <figure><img src="furniture/13.png" alt="img" /></figure>
                        <h3>Tossberg</h3>
                        <span> March 20</span><span>Comment</span>
                        <p>Bring the warmth of wood into any part of your home with LISABO living room furniture. Natural wood grain gives each table and bench a unique pattern. And though the solid birch legs and ash veneer tops are naturally durable, we added a hardwearing lacquer coating that?s even more resistant to the bumps and thumps of everyday life.</p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="news-box">
                        <figure><img src="images/1.jpg" alt="img" /></figure>
                        <h3>Stand Desk</h3>
                        <span> March 20</span><span>Comment</span>
                        <p>Mix and match your choice of table top and legs or choose this ready-made combination. Strong and light-weight, made with a technique that uses less raw materials, reducing the impact on the environment.</p>
                    </div>
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

</script> 
</body>
</html>