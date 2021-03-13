<%@page import="java.util.ArrayList"%>
<%@page import="ict.bean.FurnitureBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.Arrays"%>
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

<style>
.dropbtn {
    background-color: #808080;
    color: white;
    padding: 2px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    border-radius: 10px;
}


.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 1000px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
    
    

</div>

<div class="wrapper">

    <%@include file="/header.jsp" %>

    <div id="content">

        <!-- end header -->
        <div class="contactus">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div class="title">
                            <h2>Product</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%
            ArrayList<FurnitureBean> furnitureList = (ArrayList<FurnitureBean>) request.getAttribute("furnitureList");
        %>
        <div class="ourproduct">
            <div class="container">
                <div class="row product_style_3" ">
                    <!-- product -->

                    <div class='container'>       
                        <form  method="GET" action="handleFurniture?action=search1">
                            <label><strong class="black">Search :</strong></label>
                            <input type="hidden" name="action" value="search1"/>
                            <input name="search"  type="text" value=""/>&nbsp
                            <input type="submit"  class="dropbtn"  value="search"/>
                            
                        </form>

                       <p>&nbsp</p>
                        
                        <!--   <form  method="GET" action="handleFurniture?action=search2">   search2 button 用作啟動排序搜尋的方式 
                            <label><strong class="black">Search2 :</strong></label>
                            <input type="hidden" name="action" value="search2"/>
                            <input name="search"  type="text" value=""/>&nbsp
                            <input type="submit" class="btn btn-primary" value="search"/>
                        </form>!-->
                      
                      <div class="dropdown">
                        <button class="btn btn-primary">Furniture Type</button>
                        <div class="dropdown-content">
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=type&type=sofa"  value="sofa">Sofa</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=table" role="tab" aria-controls="profile">Table</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=chair" role="tab" aria-controls="messages">Chair</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=electronic" role="tab" aria-controls="settings">Electronics</a>
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=type&type=other" role="tab" aria-controls="settings">Other</a>
                        </div>
                      </div>
                       &nbsp
                       <div class="dropdown">
                        <button class="btn btn-primary">Sorting Way</button>
                        <div class="dropdown-content">
                        <div class="list-group" id="list-tab" name ="type" role="tablist">
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=sort&type=asc">Price: Low to High</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=desc">Price: High to Low</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=ascName">Name: A to Z</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=descName">Name: Z to A</a>
                        </div>
                        </div>
                      </div>  
                        
                      <p>&nbsp</p>
                      <p>&nbsp</p>
                      <p>&nbsp</p>

                      
                      
                      <!--  If you guys dont want to using drop down list
                        <br><label><strong class="black">Category</strong></label><br>
                        <div class="list-group" id="list-tab" name ="type" role="tablist">
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=type&type=sofa"  value="sofa">Sofa</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=table" role="tab" aria-controls="profile">Table</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=chair" role="tab" aria-controls="messages">Chair</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=type&type=electronic" role="tab" aria-controls="settings">Electronics</a>
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=type&type=other" role="tab" aria-controls="settings">Other</a>
                        </div>
                        <br>
                        
                        
                        
                        <label><strong class="black">Sort</strong></label><br>
                        <div class="list-group" id="list-tab" name ="type" role="tablist">
                            <a  class="list-group-item list-group-item-action"  href="handleFurniture?action=sort&type=asc">Price: Low to High</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=desc">Price: High to Low</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=ascName">Name: A to Z</a>
                            <a  class="list-group-item list-group-item-action"   href="handleFurniture?action=sort&type=descName">Name: Z to A</a>
                        </div>
                        <br>
                      -->

                        <br>
                        <form method="GET" action="handleFurniture?action=categorySort">
                            <input type="hidden" name="action" value="categorySort">
                            <label><strong class="black">Category:</strong></label>
                            <input type="radio" name="type" value="sofa">Sofa
                            <input type="radio" name="type" value="table">Table
                            <input type="radio" name="type" value="chair">Chair
                            <input type="radio" name="type" value="electronic">Electronic
                            <input type="radio" name="type" value="other">Other
                            <br>
                            <label><strong class="black">Sort:</strong></label>
                            <input type="radio" name="sort" value="asc" checked>Price: Low to High
                            <input type="radio" name="sort" value="desc">Price: High to Low
                            <input type="radio" name="sort" value="ascName">Name: A to Z
                            <input type="radio" name="sort" value="descName">Name: Z to A
                            <input type="submit" class="btn btn-primary" value="sort"/>
                        </form>
                        <br><label><strong class="black">Category</strong></label><br>

          <p>&nbsp</p>          <p>&nbsp</p>
                    </div>                   
               



                    <%
                        // out.println("<div class='container'>");
                        //out.println("<form  method=\"GET\" action=\"handleFurniture?action=search1\"><label>Search :</label>&nbsp<input id=\"search\" name=\"search\" />&nbsp <input type=\"submit\" class=\"btn btn-primary\" value=\"search\"/></form></div><br>");

                       String [] array = new String [furnitureList.size()]; //Testing
                       int [] array2 = new int [furnitureList.size()]; //Testing
                       String [] accendingAlphapetArray = new String [furnitureList.size()]; //英文字母由 A-->Z 方式排
                       

                        for (int i = 0; i < furnitureList.size(); i++) {
                            out.println("<tr><br><div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                    + "<div class='full product'>"
                                    + "<div class='product_img'>"
                                    + "<div class='center'>"
                                    + "<img src=\"furniture/" + furnitureList.get(i).getFurnitureId() + ".png\" alt='#'/>"
                                    + "<div class='overlay_hover'>"
                                    + "<a class='add-bt' href=\"handleFurniture?action=putToCart&id=" + furnitureList.get(i).getFurnitureId() + "\">Add to cart<a href=\"handleFurniture?action=ShowOneFurniture&id=" + furnitureList.get(i).getFurnitureId() + "\"</a>"
                                    + "</div></div></div>"
                                    + "<div class='product_detail text_align_center'>");
                            out.println("<p class='product_price'>$" + furnitureList.get(i).getPrice());
                            out.println("<p class='product_descr'>" + furnitureList.get(i).getName() + "</p>");
                            out.println("</div></div></div></tr>");
                        }

                      /*  
                    Arrays.sort(array);//Test
                        Arrays.sort(array2);//Test
                        Arrays.sort(accendingAlphapetArray); //進行排序動作
                        
                        for (int i=0 ; i <array.length; i++){ //Test array
                        out.println(array[i]);
                        }
                        out.println("<p></p>"); 
                        for (int i=0 ; i <array.length; i++){ //Test array2
                        out.println(array2[i]);
                        }
                        out.println("<p></p>");
                        
                        for (int i=0 ; i <array.length; i++){ //將以英文A-->Z方式呈現
                        out.println("<tr><br><div class='col-xl-4 col-lg-4 col-md-6 col-sm-12'>"
                                    + "<div class='full product'>"
                                    + "<div class='product_img'>" //+ "<div class='overlay_hover'>"
                                    + "<div class='center'>" +  accendingAlphapetArray[i] + "</div></div></div></div></tr>");
                     //   out.println(array3[i]);
                        out.println("<p></p>");
                        }
                        out.println("<p></p>");
                    // out.println(Arrays.toString(array));
                    */

                    %>  

                  
                    
                   
                    
                    
                    <!-- end product -->

                </div>

            </div>

        </div>
        <!--  footer (Dont remove this part cause all of the logo and words of footer will going to left and idk why happen that)--> 

        <footer>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <li style="display:none;"> <a href="about.jsp">About</a></li>
            </div>
        </footer>
        <!-- end footer (Dont remove this part cause all of the logo and words of footer will going to left and idk why happen that)-->

        <%@include file="/footer.jsp" %>
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

    $(document).ready(function () {
        $('#search').keyup(function () {
            $('tr:gt(0)').hide().filter(":contains('" + $('#search').val() + "')").show();
        });
    });
</script> 
</body>
</html>