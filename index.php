<?php
$insert = false;
if(isset($_POST['name'])){
    // Set connection variables
    $server = "localhost";
    $username = "root";
    $password = "";

    // Create a database connection
    $con = mysqli_connect($server, $username, $password);

    // Check for connection success
    if(!$con){
        die("connection to this database failed due to" . mysqli_connect_error());
    }

	$name = $_POST['name'];
	$dob = $_POST['dob'];
	$Fname = $_POST['Fname'];
    $gender = $_POST['gender'];
	$mobile = $_POST['mobile'];
	$address = $_POST['address'];
	$district = $_POST['district'];
	$state = $_POST['state'];
  

    $sql = "INSERT INTO `srms`.`adm_form` (`Name`, `DOB`, `Father's Name`, `Gender`, `Mobile`, `Address`,`District`,`State`) VALUES ('$name', '$dob', '$Fname', '$gender', '$mobile', '$address','$district','$state')";
    // echo $sql;

	if($con->query($sql) == true){
        // echo "Successfully inserted";

        // Flag for successful insertion
        $insert = true;
    }
    else{
        echo "ERROR: $sql <br> $con->error";
    }
	$con->close();

}
	?>
<!DOCTYPE html>
<html lang="zxx">
<head>
 <title>River View  | Home  </title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="River View web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link rel="stylesheet" href="css/swipebox.css">
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- //css files -->
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Exo+2:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=cyrillic,latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
<!-- //online-fonts -->
</head>
<body>
<!-- banner -->
<div class="main_section_agile" id="home">
	<div class="agileits_srms_banner_nav">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			<h1><a class="navbar-brand" href="index.html"><i class="fa fa-leanpub" aria-hidden="true"></i> River View</a></h1>

			</div>
			<div class="srms_header_right">
			    <form action="#" method="post">
					<input name="Search here" type="search" placeholder="Search" required="">
					<input type="submit" value="">
				</form>
			</div>
			<ul class="agile_forms">
				<li><a class="active" href="students/index.php"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign In now</a> </li>
			<!--	<li><a href="#" data-toggle="modal" data-target="#myModal3"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sign Up</a> </li> -->
			</ul>
			
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<nav class="link-effect-2" id="link-effect-2">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html" class="effect-3">Home</a></li>
						<li><a href="#about" class="effect-3 scroll">About Us</a></li>
						<li><a href="#services" class="effect-3 scroll">Services</a></li>
						<li><a href="#team" class="effect-3 scroll">Team</a></li>
						<li><a href="#gallery" class="effect-3 scroll">Gallery</a></li>
						<li><a href="#mail" class="effect-3 scroll">Mail Us</a></li>
					</ul>
				</nav>

			</div>
		</nav>	
		<div class="clearfix"> </div> 
	</div>
</div>
<!-- banner -->

<div class="about-bottom">
	
	<div class="col-md-6 w3l_about_bottom_left">
		<br>
		<br>
		<br>
		<br><br><br>
	<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Take A Glimpse To Our Dream World</h2>
	<br>
	<br>
		<div class="video-grid-single-page-agileits">
			<div data-video="aD4QjH9Et4k" id="video"> <img src="images/banner2.jpg" alt="" class="img-responsive" /> </div>
		</div>
		<div class="w3l_about_bottom_left_video">
			<h4>watch our video</h4>
		</div>
	</div>
	
	

	<div class="col-md-6 w3l_about_bottom_right one">
		
	
		<div class="abt-w3l">
	
		
			<div class="header-w3l">
			
				<h2>Admission Form</h2>
				<h4>Enter the Following Details</h4>
				<form action="index.php" method="post" class="mod2">
					<div class="col-md-6 col-xs-6 w3l-left-mk">
						<ul>
							<li class="text">Name of Applicant :  </li>
							<li class="agileits-main"><i class="fa fa-user-o" aria-hidden="true"></i><input name="name" id= "name" type="text" required="" placeholder="Name"></li>
							<li class="text">Date of Birth :  </li>
							<li class="agileits-main"><i class="fa fa-calendar" aria-hidden="true"></i><input class="name" name="dob" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'yyyy/mm/dd';}" required="" placeholder="YYYY/MM/DD" /></li>
							<li class="text">Father Name  :  </li>
							<li class="agileits-main"><i class="fa fa-user-o" aria-hidden="true"></i><input name="Fname" id="Fname" type="text" required="" placeholder="Father's Name"></li>
							<li class="text"  >Gender  :  </li>
							<li class="agileits-main"><i class="fa fa-user-o" aria-hidden="true"></i><input name="gender" id="gender" type="text" required="" placeholder="M/F/O"></li>
						</ul>
					</div>
					<div class="col-md-6 col-xs-6 w3l-right-mk">
						<ul>
							<li class="text">mobile no  :  </li>
							<li class="agileits-main"><i class="fa fa-phone" aria-hidden="true"></i><input name="mobile" id="mobile" type="text" required="" placeholder="+91-1234567890"></li>
							<li class="text">Address  :  </li>
							<li class="agileits-main"><i class="fa fa-home" aria-hidden="true"></i><input id="address" name="address" type="text" required="" placeholder="H.No , Street No.,Landmark"></li>
							<li class="text">District  :  </li>
							<li class="agileits-main"><i class="fa fa-map-marker" aria-hidden="true"></i><input name="district" id="district" type="text" required="" placeholder= "District"></li>
							<li class="text">State  :  </li>
							<li class="agileits-main"><i class="fa fa-map-marker" aria-hidden="true"></i><input name="state" id="state" type="text" required="" placeholder="State"></li>
						</ul>
					</div>
					<div class="clearfix"></div>
					<div class="agile-submit">
						<input type="submit" value="submit">
						<?php
        if($insert == true){
        echo "<p class='submitMsg'>Thanks for submitting your form. We are happy to see you</p>";
        }
    ?>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->
<!-- Modal1 
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
	<div class="modal-dialog">
	
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				
				<div class="signin-form profile">
					<h3 class="agileinfo_sign">Sign In</h3>	
					<div class="login-form">
						<form  method="post">
							<input type="text" name="st_username" placeholder="Enter Your Username" required="">
							<input type="password" name="st_password" placeholder="Password" >
							<div class="tp">
								<input type="submit" value="Sign In" name="student_signin">
							</div>
						</form>
					</div>
					<div class="login-social-grids">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
						</ul>
					</div>
					<p><a href="#" data-toggle="modal" data-target="#myModal3" > Don't have an account?</a></p>
				</div>
				
			</div>
		</div>
	</div>
</div>
//Modal1 -->	
	
	
<!-- Modal2 -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
	<div class="modal-dialog">
	<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			<!--
				<div class="signin-form profile">
					<h3 class="agileinfo_sign">Sign Up</h3>	
					<div class="login-form">
						<form method="post" >
						   <input type="text" name="username" placeholder="Username" required="">
							<input type="email" name="email" placeholder="Email" required="">
							<input type="password" name="password" placeholder="Password" required="">
							<select class="form-control" name="grade" required="">
							
								<option class="select_grade">
								Select Class
								</option>
							
								
								
							</select>
							<input type="submit" value="Sign Up" name="student_signup">
						</form>
					</div>
					<p><a href="#"> By clicking Sign Up, I agree to your terms</a></p>
				</div>
				-->
			</div>
		</div>
	</div>
</div>
<div class="clearfix"> </div> 
<!-- //Modal2 -->	
<!-- about -->
<div class="about-top" id="about">
	<div class="container">
		<h3 class="w3l-title">About Us</h3>
		<div class="srms_header">
			<p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
		</div>
		<div class="col-md-7 wthree-services-bottom-grids">
			<div class="wthree-services-left">
				<img src="images/ab1.jpg" alt="">
			</div>
			<div class="wthree-services-right">
				<img src="images/ab2.jpg" alt="">
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="col-md-5 wthree-about-grids">
			<h4>Welcome to Our University</h4>
			<a href="#" class="trend-w3l" data-toggle="modal" data-target="#myModal"><span>Read More</span></a>
			<a href="#mail" class="trend-w3l scroll"><span>Get In Touch</span></a>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- modal -->
<div class="modal about-modal w3-agileits fade" id="myModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
			</div> 
			<div class="modal-body">
				<img src="images/g10.jpg" alt=""> 
				<p> Coming soon  </p>
			</div> 
		</div>
	</div>
</div>
<!-- //modal --> 
<!-- //about -->
<!--stats-->
<div class="stats" id="stats">
	<div class="container">
		<div class="stats-info">
			<div class="col-md-3 col-xs-3 stats-grid slideanim">
				<i class="fa fa-users" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='100' data-delay='.5' data-increment="1">12760</div>
				
				<h4 class="stats-info">FOREIGN FOLLOWERS</h4>
			</div>
			<div class="col-md-3 col-xs-3 stats-grid slideanim">
				<i class="fa fa-book" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='4000' data-delay='.5' data-increment="3">31000</div>
				
				<h4 class="stats-info">CLASSES COMPLETE</h4>
			</div>
			<div class="col-md-3 col-xs-3 stats-grid slideanim">
				<i class="fa fa-trophy" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='850' data-delay='.5' data-increment="10">79000</div>
				
				<h4 class="stats-info">STUDENTS ENROLLED</h4>
			</div>
			<div class="col-md-3 col-xs-3 stats-grid slideanim">
					<i class="fa fa-user" aria-hidden="true"></i>
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='60' data-delay='.5' data-increment="1">600</div>
			
				<h4 class="stats-info">CERTIFIED TEACHERS</h4>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--//stats-->
<!-- services -->
<div class="services" id="services" >
	<div class="container">  
		<h3 class="w3l-title">Our Services</h3>
		<div class="srms_header">
			<p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
		</div>
		<div class="services-w3ls-row">
			<div class="col-xs-4 services-grid agileits-srms">
				<span class="fa fa-graduation-cap" aria-hidden="true"></span>
				<h6 style= "visibility:hidden;" >01</h6>
				<h5>Scholarship Facility</h5><br> <br>
				<p>The faculty play a significant role in this all-round growth of the Institute by participating in various activities such as Teaching and Course Development, Research Involvement, Institutional Development, Linkage with the outside world.</p>
			</div>
			<div class="col-xs-4 services-grid agileits-srms">
				<h6 style= "visibility:hidden;">02</h6> 

				<h5>Skilled Lecturers</h5>
				<p>A great teacher has high expectations of their students and encourages everyone to always work at their best level.
Spark learners' curiosity by including interesting facts or questions throughout the lecture;</p>
				<!-- <span class="fa fa-user-o grid-w3l-ser" aria-hidden="true"></span> -->
			</div>
			<div class="col-xs-4 services-grid agileits-srms">
				<span class="fa fa-book" aria-hidden="true"></span>
				<h6 style= "visibility:hidden;">03</h6>
				<h5>Book Library & Store</h5> <br>
				<p>Books give plenty of joy to students, and they learn a lot of things from books. They take them into a unique world of imagination and improve their standard of living and we enrich these books to our fullest.</p>
			</div> 
			<div class="clearfix"> </div>
		</div>  
	</div>
</div>
<!-- //services -->
<!-- Gallery -->
<section class="portfolio-w3ls" id="gallery">
		<h3 class="w3l-title">Our Gallery</h3>
		<div class="srms_header">
			<p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
		</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g1.jpg" class="swipebox"><img src="images/g1.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g2.jpg" class="swipebox"><img src="images/g2.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g3.jpg" class="swipebox"><img src="images/g3.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g7.jpg" class="swipebox"><img src="images/g7.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g5.jpg" class="swipebox"><img src="images/g5.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
					</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g6.jpg" class="swipebox"><img src="images/g6.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
					   </div>
				   </a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g11.jpg" class="swipebox"><img src="images/g11.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
					   </div>
				   </a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g8.jpg" class="swipebox"><img src="images/g8.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
					   </div>
				   </a>
				</div>
					<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g9.jpg" class="swipebox"><img src="images/g9.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g10.jpg" class="swipebox"><img src="images/g10.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g4.jpg" class="swipebox"><img src="images/g4.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="col-md-3 col-xs-3 gallery-grid gallery1">
					<a href="images/g12.jpg" class="swipebox"><img src="images/g12.jpg" class="img-responsive" alt="/">
						<div class="textbox">
						<h4>River View</h4>
							<p><i class="fa fa-picture-o" aria-hidden="true"></i></p>
						</div>
				</a>
				</div>
				<div class="clearfix"> </div>
</section>
<!-- //gallery -->
<!-- team -->
<div class="team-w3l" id="team">
	<div class="container">
		<h3 class="w3l-title">Our Skilled Lecturers</h3>
		<div class="srms_header">
			<p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
		</div>
		<div class="team-w3l-grid">
			<div class="col-md-4 col-xs-4 about-poleft t1">
				<div class="about_img"><img src="images/t1.jpg" alt="">
				  <h5>Shubham Soni</h5>
				  <div class="about_opa">
					<p>Professor</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 about-poleft t2">
				<div class="about_img"><img src="images/t2.jpg" alt="">
				  <h5>Jaiprakash Dwivedi</h5>
				  <div class="about_opa">
					<p>Senior Lecturers</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 about-poleft t3">
				<div class="about_img"><img src="images/t3.jpg" alt="">
				  <h5>Lalit Kaushal</h5>
				  <div class="about_opa">
					<p>Lecturers</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="team-w3l-grid grid-2-team">
			<div class="col-md-4 col-xs-4 about-poleft t1">
				<div class="about_img"><img src="images/t4.jpg" alt="">
				  <h5>Shalini Kumari</h5>
				  <div class="about_opa">
					<p>Professor</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 about-poleft t2">
				<div class="about_img"><img src="images/t5.jpg" alt="">
				  <h5>Loveneet Kaur</h5>
				  <div class="about_opa">
					<p>Senior Lecturers</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 about-poleft t3">
				<div class="about_img"><img src="images/t6.jpg" alt="" height= "350">
				  <h5>Deepa Kumari</h5>
				  <div class="about_opa">
					<p>Lecturers</p>
					<ul class="fb_icons2 text-center">
						<li><a class="fa fa-facebook" href="#"></a></li>
						<li><a class="fa fa-twitter" href="#"></a></li>
						<li><a class="fa fa-google" href="#"></a></li>
						<li><a class="fa fa-linkedin" href="#"></a></li>
						<li><a class="fa fa-pinterest-p" href="#"></a></li>
					</ul>
				  </div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //team -->
<!-- contact -->
<div id="mail" class="contact">
	<div class="container">
		<h3 class="w3l-title">Mail Us</h3>
		<div class="srms_header">
			<p><i class="fa fa-graduation-cap" aria-hidden="true"></i></p>
		</div>
		<div class="agile_banner_bottom_grids">
			<div class="col-md-4 col-xs-4 w3_agile_contact_grid">
				<div class="agile_contact_grid_left">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
				</div>
				<div class="agile_contact_grid_right agilew3_contact">
					<h4>Address</h4>
					<p>NH-95, Ludhiana -</p>
					<p>Chandigarh State Hwy, Punjab 140413</p>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 w3_agile_contact_grid">
				<div class="agile_contact_grid_left agileits_srms_left">
					<i class="fa fa-mobile" aria-hidden="true"></i>
				</div>
				<div class="agile_contact_grid_right agileits_srms_right">
					<h4>Phone</h4>
					<p>1800 1212 88800 <span>1723014960</span></p>
				</div>
			</div>
			<div class="col-md-4 col-xs-4 w3_agile_contact_grid">
				<div class="agile_contact_grid_left agileits_srms_left1">
					 <i class="fa fa-envelope-o" aria-hidden="true"></i>
				</div>
				<div class="agile_contact_grid_right agileits_srms_right1">
					<h4>Email</h4>
					<p><a href="mailto:info@cumail.in">info@cumail.in</a>
						<span><a href="mailto:international@cumail.in">international@cumail.in</a></span></p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="w3l-form">
			<h3 class="w3l-title">Get In Touch</h3>
			<div class="contact-grid1">
				<div class="contact-top1">
					<form action="#" method="post">
						<div class="col-md-6 col-xs-6 wthree_contact_left_grid">
							<label>Name*</label>
							<input type="text" name="Name" placeholder="Name" required="">
							<label>E-mail*</label>
							<input type="email" name="E-mail" placeholder="E-mail" required="">
						</div>
						<div class="col-md-6 col-xs-6 wthree_contact_left_grid">
							<label>Phone Number*</label>
							<input type="text" name="number" placeholder="Phone Number" required="">
							<label>Subject*</label>
							<input type="text" name="subject" placeholder="Subject" required="">
						</div>
						<div class="form-group">
							<label>Message*</label>
							<textarea placeholder name="Message" required=""></textarea>
						</div>
							<input type="submit" value="Send">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<br>
<h3 class="w3l-title">Reach Us At One Go</h3>
<br>
<br>
<div id="map">

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7281170.735858483!2d70.35599240091847!3d26.990350902375415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ffb140bd63e07%3A0x68591e334d17a988!2sChandigarh%20University!5e0!3m2!1sen!2sin!4v1625986439821!5m2!1sen!2sin" width="100%" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
<br>
<!-- footer -->
<div class="footer">
	<div class="container">
		<div class="wthree_footer_grid_left">
			<div class="col-md-3 col-xs-3 wthree_footer_grid_left1">
				<h4>About Us</h4>
				<p>River View is an Indian private school located in Mohali, Punjab, India, near Chandigarh. The school was established in 2012 by the Punjab State Legislature and is recognized by School Commission under Section 2 with the right to confer degrees as per Section 22 of the UGC Act, 1956.</p>
			</div>
			<div class="col-md-3 col-xs-3 wthree_footer_grid_left1">
				<h4>Navigation</h4>
				<ul>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="index.html">Home</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#about" class="scroll">About Us</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#services" class="scroll">Services</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#team" class="scroll">Team</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#gallery" class="scroll">Gallery</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#mail" class="scroll">Mail Us</a></li>
				</ul>
			</div>
		


			<div class="col-md-3 col-xs-3 wthree_footer_grid_left1 w3l-3">
				<h4>Others</h4>
				<ul>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#">Media</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#">Mobile Apps</a></li>
					<li><i class="fa fa-angle-double-right" aria-hidden="true"></i><a href="#">Privacy Policy</a></li>
				</ul>
			</div>
			<div class="col-md-3 col-xs-3 wthree_footer_grid_left1 wthree_footer_grid_right1">
				<h4>Contact Us</h4>
				<ul>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a href="mailto:info@cumail.in">info@cumail.in</a></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>1800 1212 88800</li>
					<li><i class="fa fa-fax" aria-hidden="true"></i>+91 1723014960</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<div class="srms_copy_right">
	<div class="container">
		<p>© 2021 River View. All rights reserved | Design by Paras, Rohit,Rohan,Prateek </p>
	</div>
</div>
<!-- //footer -->

<!-- js-scripts -->			
<!-- js-files -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script> Necessary-JavaScript-File-For-Bootstrap 
<!-- //js-files -->
<!-- Baneer-js -->

<!-- Map-JavaScript -->
			<!-- <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>        
			<script type="text/javascript">
				google.maps.event.addDomListener(window, 'load', init);
				function init() {
					var mapOptions = {
						zoom: 11,
						center: new google.maps.LatLng(40.6700, -73.9400),
						styles: [{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]
					};
					var mapElement = document.getElementById('map');
					var map = new google.maps.Map(mapElement, mapOptions);
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng(40.6700, -73.9400),
						map: map,
					});
				}
			</script> -->
		<!-- //Map-JavaScript -->

<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->
<!-- stats -->
<script type="text/javascript" src="js/numscroller-1.0.js"></script>
<!-- //stats -->
<!-- moving-top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	<script type="text/javascript">
		$(document).ready(function() {
		/*
			var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
		*/								
		$().UItoTop({ easingType: 'easeOutQuart' });
		});
	</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //moving-top scrolling -->
<!-- gallery popup -->
<script src="js/jquery.swipebox.min.js"></script> 
<script type="text/javascript">
jQuery(function($) {
	$(".swipebox").swipebox();
});
</script>
<!-- //gallery popup -->
<!--/script-->
	<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
<!-- //Baneer-js -->
<!-- Calendar -->
<script src="js/jquery-ui.js"></script>
	<script>
	  $(function() {
		$( "#datepicker" ).datepicker();
	 });
	</script>
<!-- //Calendar -->	

<!-- //js-scripts -->
</body>
</html>