<%-- 
    Document   : home
    Created on : Oct 19, 2023, 10:33:06 AM
    Author     : Fpt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>VietTravel</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- Embed css here-->
	<link rel="stylesheet" href="css/styleindex.css">

</head>

<body>

	<div class="container-fluid padding">

		<div class="row">

			<div class="col-lg-4 col-md-6 col-sm-12 nopadding banner">

				<div class="list-option">
					<div class="logo">
						<img src="images/logo2.webp" alt="">
					</div>

					<div class="list-option-middle">
						<div class="list-option-middle-left">
							<img src="images/user.png" alt="">
							<form action="">
								<input type="submit" value="Login"/>
							</form>
						</div>
						<div>
							<div class="list-option-element"><a href="index.html">HOME</a> </div>
							<div class="list-option-element"><a href="#">CART</a></div>
							<div class="list-option-element"><a href="#">ABOUT</a></div>
							<div class="list-option-element"><a href="#footer">CONTACT</a></div>
						</div>
					</div>
					


					<div class="bestseller">
						<img class="favorite-item-img nopadding " src="images/IMG_0882.JPG" alt="">
						<div>
							<p>BEST SELLER</p>
							<p>MG Astray Red 6 arms</p>
							<h3>100$</h3>
							<input type="submit" value="Order">
						</div>
					</div>
				</div>
			</div>



			<div class="col-lg-8 col-md-6 col-sm-12 favorite">

				<!-- Insert code favorite places here-->

				<form class="nopadding" action="" method="">
					<ul id="list-option">

						<li> <input type="button" value="SD "></li>
						<li> <input type="button" value="HG 1/144"></li>
						<li> <input type="button" value="RG 1/144"></li>
						<li> <input type="button" value="MG 1/100"></li>
						<li> <input type="button" value="PG 1/60"></li>
					</ul>
				</form>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/barbatos_lupus_hg.jpg" alt="">
						<p>SD Gundam Exia</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/strikefreedom_rg.jpg" alt="">
						<p>SD Gundam Zaku II</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/altron_hg.jpg" alt="">
						<p>SD Sangoku Soketsuden</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sinanju_mg.jpg" alt="">
						<p>SD Gundam Deathscythe</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/IMG_0882.JPG" alt="">
						<p>SD XXXG-01W Wing Gundama</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sandrock_sd.jpg" alt="">
						<p>SD Gundam Sandrock </p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/exia_sd.jpg" alt="">
						<p>SD Gundam Exia</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/zaku_sd.jpg" alt="">
						<p>SD Gundam Zaku II</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sangoku_sd.jpg" alt="">
						<p>SD Sangoku Soketsuden</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/deathscythe_sd.jpg" alt="">
						<p>SD Gundam Deathscythe</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/wing_sd.jpg" alt="">
						<p>SD XXXG-01W Wing Gundama</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sandrock_sd.jpg" alt="">
						<p>SD Gundam Sandrock </p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/exia_sd.jpg" alt="">
						<p>SD Gundam Exia</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/zaku_sd.jpg" alt="">
						<p>SD Gundam Zaku II</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sangoku_sd.jpg" alt="">
						<p>SD Sangoku Soketsuden</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/deathscythe_sd.jpg" alt="">
						<p>SD Gundam Deathscythe</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/wing_sd.jpg" alt="">
						<p>SD XXXG-01W Wing Gundama</p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12 favorite-item-father nopadding">
					<div class="favorite-item">
						<img class="favorite-item-img nopadding" src="images/sandrock_sd.jpg" alt="">
						<p>SD Gundam Sandrock </p>
						<h3>100$</h3>
						<input type="submit" value="Order">
					</div>
				</div>
				
			</div>
		</div>
	</div> <!--Kết thúc container-fluid-->



	<div class="container-fluid" id="footer">

		<div class="row">

			<div class="footer">

				<p>Email : minhnqhe176167@fpt.edu.vn</p>
				<p>Address: FPTU, Thạch Hòa, Thạch Thất , Hà Nội</p>
				<h5>&copy; Copyright 2021. VietTravel.VN</h5>
			</div>

		</div>

	</div>
</body>

</html>