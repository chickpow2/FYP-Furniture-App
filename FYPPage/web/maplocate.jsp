
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <title>Modern Furniture</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="https://d19vzq90twjlae.cloudfront.net/leaflet-0.7/leaflet.css" />
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
</head>

<body>
<%@include file="/header.jsp" %>

    <div class="contactus">
       <div class="container-fluid">
                <div class="row">
                   <div class="col-md-8 offset-md-2">
                      <div class="title">
                         <h2>Shop Location</h2>

                      </div>
                   </div>
                </div>
              </div>

    </div>

    <div id="map" style="width: 100%; height: 450px"></div>

    <script src="https://d19vzq90twjlae.cloudfront.net/leaflet-0.7/leaflet.js">
    </script>

    <script>

	var planes = [
		["LWL Modern Furniture",22.305866071284168, 114.25401330635657],
		["KT Modern Furniture",22.313886005756558, 114.23192796775037],
		["ST Modern Furniture1",22.39053860496315, 114.19808104843236],
		["TY Modern Furniture",22.342732176360773, 114.10710511212756],
		["TM Modern Furniture",22.393561686450877, 113.96726252210364],
		
		];

        var map = L.map('map').setView([22.305866071284168, 114.25401330635657], 16);
        mapLink = 
            '<a href="http://openstreetmap.org">OpenStreetMap</a>';
        L.tileLayer(
            'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; ' + mapLink + ' Contributors',
            maxZoom: 18,
            }).addTo(map);

		for (var i = 0; i < planes.length; i++) {
			marker = new L.marker([planes[i][1],planes[i][2]])
				.bindPopup(planes[i][0])
				.addTo(map);
		}
               
    </script>
    
    <%@include file="/footer.jsp" %>
    
</body>
</html>