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

function f2(){
var tab3=document.getElementById("tab3");
var tab4=document.getElementById("tab4");
tab3.style.display=(tab3.style.display=="none"?"":"none");
tab4.style.display=(tab4.style.display=="none"?"":"none");
}

function f3(){
var tab5=document.getElementById("tab5");
var tab6=document.getElementById("tab6");
tab5.style.display=(tab5.style.display=="none"?"":"none");
tab6.style.display=(tab6.style.display=="none"?"":"none");
}

function f4(){
var tab7=document.getElementById("tab7");
var tab8=document.getElementById("tab8");
tab7.style.display=(tab7.style.display=="none"?"":"none");
tab8.style.display=(tab8.style.display=="none"?"":"none");
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
        var result='<table border="0">';
        
    for( i=1;i<localStorage.length;i++)
    {
        var key=localStorage.key(i);
        var value = localStorage.getItem(key);
        var date = new Date();
        date.setTime(key);
        var datestr = date.toGMTString();
        result +='<tr><td>'+'Customer ' +i+ ' Said: </td><td>'+value+'</td><td>'+ '(Release on ' +datestr+ ')' + '</td></tr>';
    
    }
    
    result+='</table>';
    var target = document.getElementById(id);
    target.innerHTML = result;
}

function clearStorage(id){
    localStorage.clear();
    alert("Data has been deleted");
    loadStorage('msg');
}

</script>

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
                        <span> March 20</span><span>
                          
                        <input type="button" onclick="f1()" value="Comment" style="background: none;border: none;color:#0fbbad"/>
                        <table border=0 id="tab1"  style="display:none;">
                        <tr>
                            <td></td>
                        </tr>
                        </table>
                        <table border=1 id="tab2" style="display:none; background-color: Transparent;border: none;">
                        <tr>
                        <td>
                            <textarea id="dome" cols="60" rows="10"></textarea>
                            <input type="button" value="Save" onclick="saveStorage('dome');">
                            <input type="button" value="Clear" onclick="clearStorage('msg');">
                            <input type="button" value="Read" onclick="loadStorage('msg');">
                            <p id="msg"></p>
                        </td>
                        </tr>
                        </table>
                        <br>
                       
                        </span>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters </p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="news-box">
                        <figure><img src="images/blog.jpg" alt="img" /></figure>
                        <h3>LISABO</h3>
                        <span> March 20</span>
                        <span>
                         <input type="button" onclick="f2();" value="Comment" style="background: none;border: none;color:#0fbbad"/>
                        <table border=0 id="tab3"  style="display:none;">
                        <tr>
                            <td></td>
                        </tr>
                        </table>
                        <table border=1 id="tab4" style="display:none; background-color: Transparent;border: none;">
                        <tr>
                        <td>
                            <textarea id="dome" cols="60" rows="10"></textarea>
                            <input type="button" value="Save" onclick="saveStorage('dome');">
                            <input type="button" value="Clear" onclick="clearStorage('msg');">
                            <input type="button" value="Read" onclick="loadStorage('msg');">
                            <p id="msg"></p>
                        </td>
                        </tr>
                        </table>
                        <br>   
                        </span>
                        <p>Gateleg tables have been around for centuries ? with the space-saving design it?s no wonder why. We gave this table a straightforward, Scandinavian look and added a few drawers for cutlery and napkins.
                            Table with drop-leaves seats 2-4; makes it possible to adjust the table size according to need.</p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 ">
                    <div class="news-box">
                        <figure><img src="furniture/13.png" alt="img" /></figure>
                        <h3>Tossberg</h3>
                        <span> March 20</span>
                        <span>
                            <input type="button" onclick="f3();" value="Comment" style="background: none;border: none;color:#0fbbad"/>
                        <table border=0 id="tab5"  style="display:none;">
                        <tr>
                            <td></td>
                        </tr>
                        </table>
                        <table border=1 id="tab6" style="display:none; background-color: Transparent;border: none;">
                        <tr>
                        <td>
                            <textarea id="dome" cols="60" rows="10"></textarea>
                            <input type="button" value="Save" onclick="saveStorage('dome');">
                            <input type="button" value="Clear" onclick="clearStorage('msg');">
                            <input type="button" value="Read" onclick="loadStorage('msg');">
                            <p id="msg"></p>
                        </td>
                        </tr>
                        </table>
                        <br>
                            
                        </span>
                        <p>Bring the warmth of wood into any part of your home with LISABO living room furniture. Natural wood grain gives each table and bench a unique pattern. And though the solid birch legs and ash veneer tops are naturally durable, we added a hardwearing lacquer coating that?s even more resistant to the bumps and thumps of everyday life.</p>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="news-box">
                        <figure><img src="images/1.jpg" alt="img" /></figure>
                        <h3>Stand Desk</h3>
                        <span> March 20</span>
                        <span>
                        <input type="button" onclick="f4();" value="Comment" style="background: none;border: none;color:#0fbbad"/>
                        <table border=0 id="tab7"  style="display:none;">
                        <tr>
                            <td></td>
                        </tr>
                        </table>
                        <table border=1 id="tab8" style="display:none; background-color: Transparent;border: none;">
                        <tr>
                        <td>
                            <textarea id="dome" cols="60" rows="10"></textarea>
                            <input type="button" value="Save" onclick="saveStorage('dome');">
                            <input type="button" value="Clear" onclick="clearStorage('msg');">
                            <input type="button" value="Read" onclick="loadStorage('msg');">
                            <p id="msg"></p>
                        </td>
                        </tr>
                        </table>
                        <br>    
                            
                        </span>
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