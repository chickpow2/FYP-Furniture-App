
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


    <jsp:useBean id="c" scope="request" class="ict.bean.FurnitureBean" />
    <!-- loader  -->


</div>

<div class="wrapper">
    <%@include file="/header.jsp" %>

    <div id="content">

        <!-- end header -->

        <div class="layout_padding-2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                        <div class="img_box">
                            <figure><%out.println("<img src=\"furniture/" + c.getFurnitureId() + ".png\" alt='#'/>");%></figure>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 product_detail_side">
                        <div class="abotext_box">
                            <div class="product-heading">
                                <h2><%=c.getName()%></h2>
                            </div>
                            <div class="product-detail-side">
                                <span class="new-price">$<%=c.getPrice()%></span>
                                <span class="rating">
                                    <%for (int i = 0; i < c.getRating(); i++) {%>
                                    <i class="fa fa-star" aria-hidden="true"></i>
                                    <%}%>
                                    <%for (int i = 0; i < 5 - c.getRating(); i++) {%>
                                    <i class="fa fa-star-o" aria-hidden="true"></i>
                                    <%}%>
                                </span>
                                <span class="review"><%=c.getRating()%></span>
                            </div>
                            <div class="detail-contant">  
                                <p><%=c.getDescription()%>
                                    <br><span class="stock"><%=c.getStock()%> in stock</span>
                                </p>
                                <form class="cart" method="post" action="handleFurniture?action=shoppingCart">
                                    <div class="quantity">
                                        <input step="1" min="1" max="5" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" type="number">
                                    </div>
                                    <button type="submit" class="bt_main">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="full">
                            <div class="tab_bar_section">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#description">Description</a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#reviews">Reviews (2)</a> </li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="description" class="tab-pane active">
                                        <div class="product_desc">
                                            <p><%=c.getDetailDescription()%>
                                                <br>

                                        </div>
                                    </div>
                                    <div id="reviews" class="tab-pane fade">
                                        <div class="product_review">
                                            <h3>Reviews (2)</h3>
                                            <div class="commant-text row">
                                                <div class="col-lg-2 col-md-2 col-sm-4">
                                                    <div class="profile">
                                                        <img class="img-responsive" src="images/lllll.png" alt="#">
                                                    </div>
                                                </div>
                                                <div class="col-lg-10 col-md-10 col-sm-8">
                                                    <h5>Ravi</h5>
                                                    <p><span class="c_date">July 23, 2019</span> | <span><a rel="nofollow" class="comment-reply-link" href="#">Reply</a></span></p>
                                                    <span class="rating">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                    <p class="msg">ThisThis book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, ?Lorem ipsum dolor sit amet..
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="commant-text row">
                                                <div class="col-lg-2 col-md-2 col-sm-4">
                                                    <div class="profile">
                                                        <img class="img-responsive" src="images/lllll.png" alt="#">
                                                    </div>
                                                </div>
                                                <div class="col-lg-10 col-md-10 col-sm-8">
                                                    <h5>Ravi</h5>
                                                    <p><span class="c_date">July 23, 2019</span> | <span><a rel="nofollow" class="comment-reply-link" href="#">Reply</a></span></p>
                                                    <span class="rating">
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star" aria-hidden="true"></i>
                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                    </span>
                                                    <p class="msg">Nunc augue purus, posuere in accumsan sodales ac, euismod at est. Nunc faccumsan ermentum consectetur metus placerat mattis. Praesent mollis justo felis, accumsan faucibus mi maximus et. Nam hendrerit mauris id scelerisque placerat. Nam vitae imperdiet turpis</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="full review_bt_section">
                                                        <div class="float-right">

                                                            <a class="bt_main" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Leave a Review</a>

                                                        </div>
                                                    </div>

                                                    <div class="full">

                                                        <div id="collapseExample" class="full collapse commant_box">
                                                            <form accept-charset="UTF-8" action="index.jsp" method="post">
                                                                <input id="ratings-hidden" name="rating" type="hidden">
                                                                <textarea class="form-control animated" cols="50" id="new-review" name="comment" placeholder="Enter your review here..." required=""></textarea>
                                                                <div class="full_bt center">
                                                                    <button class="bt_main" type="submit">Save</button>
                                                                </div>
                                                            </form>
                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--  footer -->
        <%@include file="/footer.jsp" %>

        </footer>
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