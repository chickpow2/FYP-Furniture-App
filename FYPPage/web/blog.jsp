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


<script type="text/javascript">
function f1(){
var tab1=document.getElementById("tab1");
var tab2=document.getElementById("tab2");
tab1.style.display=(tab1.style.display=="none"?"":"none");
tab2.style.display=(tab2.style.display=="none"?"":"none");

}



function saveStorage(id){
    var data = document.getElementById(id).value;
    var time = new Date().getTime();
    localStorage.setItem(time,data);
    alert("Message has been saved!");
    loadStorage('msg');
}



function loadStorage(id){
        var i ;
        var result='<table border="0" width=1070 >';
        
    for( i=0;i<localStorage.length;i++)
    {
 
        var key=localStorage.key(i);
        var value = localStorage.getItem(key);
        var date = new Date();
        date.setTime(key);
        var datestr = date.toLocaleString();
        result +='<tr><td >'+ '<h3 style="color:blue" ><img src="images/customerLogo.png" width=70 height=70/> Customer ' +(i+1)+ ' Said:</h3><br><h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp ' + value + '</h3>'+ '<h3 align = "right"> (Release on ' +datestr+ ')</h3>' + '<hr></td></tr>';
       
        document.querySelector('#cmd').value = 'Comment(' + localStorage.length + ')';
   
    
    }
    
    result+='</table>';
    var target = document.getElementById(id);
    target.innerHTML = result;
}







function clearStorage(id){
    localStorage.clear();
    alert("Data has been deleted");
    loadStorage('msg');
    
     document.querySelector('#cmd').value = 'Comment(' + (localStorage.length) + ')';
}


</script>

<body onload="document.getElementById('readbt').click();">    
    
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
    <br>
    <br>
   <p align = "center" style="font-size:50px;"><b><u>Theme : Table</b></u></p>
   
    
    <div id="myCarousel" class="carousel slide banner_Client" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <strong class="black_nolmal"><h1 align="left"><b><u>Leaves Table</u></b> <br><br>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters </h1></p></strong>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/Dining1.jpg" /></figure>
                                            </div>
                                            
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <strong class="black_nolmal"><h1 align="left"><b><u>Light Bamboo Dining Table</u><br><br></b>Gateleg tables have been around for centuries ? with the space-saving design it's no wonder why. We gave this table a straightforward, Scandinavian look and added a few drawers for cutlery and napkins.
                            Table with drop-leaves seats 2-4; makes it possible to adjust the table size according to need.</h1></strong>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/Dining2.jpg" /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <strong class="black_nolmal"> <h1 align="left"><b><u>Moon Dining Table</b></u><br><br>Bring the warmth of wood into any part of your home with LISABO living room furniture. Natural wood grain gives each table and bench a unique pattern. And though the solid birch legs and ash veneer tops are naturally durable, we added a hardwearing lacquer coating that's even more resistant to the bumps and thumps of everyday life.
                                                </h1></strong>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/Dining3.jpg"  /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="container">
                                <div class="carousel-caption text">
                                    <div class="row">
                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                                            <div class="img_bg">
                                                <strong class="black_nolmal"><h1 align="left"><b><u> Rectangular Table</b></u><br><br>Mix and match your choice of table top and legs or choose this ready-made combination. Strong and light-weight, made with a technique that uses less raw materials, reducing the impact on the environment.</h1></strong>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                                            <div class="img_bg">
                                                <figure><img src="images/Dining4.jpg" /></figure>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
    
    
    <div class="blog">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="news-box">
                       
                        
                        <span>
                          
                            <center><input type="button" onclick="f1()" id="cmd"   value="Comment(0)" style="cursor: pointer;background: none;border: none;color:#0fbbad;font-size: 24px;"/></center> <!-- show comment number  and remember add to use case diagram!-->
                        <table border=0 id="tab1"  style="display:none;">
                        <tr>
                            <td></td>
                        </tr>
                        </table>
                        <table border=0 id="tab2"  style="display:none; background-color: Transparent;border: none;">
                        <tr>
                        <td>
                            <textarea id="dome" cols="60" rows="10" placeholder="Enter With Your Comments !!!" style="width:1100px;height:120px;font-size: 24px;"></textarea>
                            <input type="button" value="Send" style="border:3px solid ;cursor: pointer;width:250px;margin:50px;background-color:lightblue ;border-color: #4CAF50;font-color:#0fbbad;font-size: 24px;float: left;" onclick="saveStorage('dome');">
                            
                            <input type="button" value="Commend Record" style="background: none;border: none;color:#0fbbad;font-size: 24px;visibility:hidden;" id="readbt" onclick="loadStorage('msg');">
                            
                            <input type="button" value="Clear All Comment" style="border:3px solid black ;cursor: pointer;width:250px;margin:50px;background-color:red ;font-color:#0fbbad;font-size: 24px;float: right;" onclick="clearStorage('msg');">
                            <p id="msg"></p>
                        </td>
                        </tr>
                        </table>
                        
                        
                        
                        <br>
                       
                        </span>
                        
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