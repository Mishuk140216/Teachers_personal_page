<?php
ob_start();
session_start();
include_once 'login and registration form\dbconnect.php';

$sql = "SELECT * FROM `teacher` WHERE 1";
$basic_info = mysqli_query($connection, $sql);

?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>WieldStrem University</title>

<link href="css/stylesheet.css" rel="stylesheet" type="text/css" />

<script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type='text/javascript' src="js/custom.js"></script>

</head>


<body>

<!--Wrapper Start-->
<div id="wrapper">
<div id="page">

<!--Header Start-->
<div id="header">

<div class="logo-part">

<!--Logo Start-->
<div class="logo"><a href="index.html" ><img src="images/ku logo.png" style="position:absolute;" width="auto" height="auto" alt=""/>
<!--Logo End-->
<h2 style="padding-left:100px; color:white;">COMPUTER SCIENCE &amp; ENGINEERING DISCIPLNE</h2>
<h4 style="padding-left:100px; color:white;">KHULNA UNIVERSITY</h4>
</a></div>
<div class="search-part">

<div class="search">

<!--Search Start-->
<div class="search-inner">
<input name="textfield" type="text" value="Search wieldstrem University" onfocus="if(this.value == 'Search wieldstrem University') { this.value = ''; }" onblur="if(this.value == '') { this.value = 'Search wieldstrem University'; }" class="search-input-bg" id="textfield"  />
</div>
<!--Search End-->

<!--Social Media Start-->
<div class="social-media">
<ul>
<li> <a href="#"><img src="images/facebook.png" width="27" height="28" alt="" /> </a></li>
<li> <a href="#"><img src="images/twitter.png" width="27" height="28" alt="" /> </a></li>
<li> <a href="#"><img src="images/google+.png" width="27" height="28" alt="" /> </a></li>
<li> <a href="#"><img src="images/youtube.png" width="27" height="28" alt="" /> </a></li>
<li> <a href="#"><img src="images/dribbble.png" width="27" height="28" alt="" /> </a></li>
</ul>
</div>
<!--Social Media End-->

</div>

<!--Top Menu Start-->
<div class="top-menu">
<ul>
<li><a href="#">A-Z  Site Index</a></li>
<li><a href="#">Campus Map &amp; Location</a></li>
<li><a href="#">Directory</a></li>
<li><a href="#">Blog</a></li>
<li><a href="#">Help</a></li>
</ul>
</div>
<!--Top Menu End-->

</div>

</div>


<!--Menu Start-->
<div class="menu-part">


<div class="menu">

<div class="menu-inner">
<ul id="main_menu">
<li><a href="index.html">Home</a></li>
<li><a href="about.html">About Us</a></li>
<li><a href="Academics.html">Academics</a></li>
<li><a href="Admision.html">Admission</a></li>
<li><a href="compus-life.html">Campus Life </a></li>
<li style="background:none; padding-right:0px;"><a href="#">Pages</a>
<ul>
<li><a href="location.html">Campus Map &amp; Location</a></li>
<li><a href="blog.html">Blog</a></li>
<li><a href="blog-details.html">Blog Details</a></li>
<li><a href="research.html">Research</a></li>
<li><a href="course.html">Course</a></li>


</ul>
</li>
</ul>
</div>

</div>

<!--Apply Now Part Start-->
<div class="apply"><a href="#"><img src="images/apply-now-buttion.png" width="280" height="60" alt="" /></a></div>
<!--Apply Now Part End-->

</div>
<!--Menu End-->




</div>
<!--Header End-->



<!--Content Start-->
<div id="content">

<div class="inner-part">

<div class="inner-left">
<h1>OUR TEACHERS</h1>

<div class="campus-part">

<!--Compus Life 1 Start-->


	<?php
		
        while($row = mysqli_fetch_assoc($basic_info))
        {        	
  			echo "<div class='campus-part-list'>";
            echo "<div class='campus-part-list-image'><img src=".$row['photo']." width='auto' height='175' alt='' ></div>";
            echo "<div class='campus-part-list-text'>";
            echo "<h5 id='name'>". $row["name"]."</h5>";
            echo "<p>". $row["designation"].",<br>". $row["discipline"].",<br>". $row["inst"].",<br>Email: ". $row["email"].",<br>";

            echo "<a href='about.php?id=".$row['t_id']."'>Read More +</a></div></div>";
        }

    ?>


</div>

</div>

<!--Sidebar Part Start-->
<div class="sidebar">

<div class="sidebar-inner">
<div class="sidebar-top"><img src="images/sitebar-top.png" width="269" height="20" alt="" /></div>
<div class="sidebar-center">

<!--Download Part Start-->
<div class="download"><a href="#"><img src="images/download.png" width="202" height="43" alt="" /></a></div>
<!--Download Part End-->


<!--Campus Event Calender Part Start-->
<div class="event-cal">
<h1>Campus Event Calender<img src="images/rss.png" width="17" height="17" alt="" class="rss" /></h1>

<!--Event1 Start-->
<div class="event-cal-list">
<div class="event-cal-image"> <span>Sep <br />4</span></div>
<div class="event-cal-text">
<h2>The point of using Lorem <span>9:15 am – 5:00 pm</span></h2>
<p><a href="#">Read more about this event +</a></p>
</div>
</div>
<!--Event1 End-->

<!--Event2 Start-->
<div class="event-cal-list">
<div class="event-cal-image"> <span>Sep <br />6</span></div>
<div class="event-cal-text">
<h2>The point of using Lorem <span>9:15 am – 5:00 pm</span></h2>
<p><a href="#">Read more about this event +</a></p>
</div>
</div>
<!--Event2 End-->

<!--Event3 Start-->
<div class="event-cal-list" style="background:none;">
<div class="event-cal-image"> <span>Sep <br />10</span></div>
<div class="event-cal-text">
<h2>The point of using Lorem <span>9:15 am – 5:00 pm</span></h2>
<p><a href="#">Read more about this event +</a></p>
</div>
</div>
<!--Event2 End-->

<div class="view-inner"><a href="#"><img src="images/view.png" width="158" height="37" alt="" /></a></div>
</div>

<!--Campus Event Calender Part End-->


<!--Campus News Part Start-->
<div class="cam-news">
<h1>Campus News <img src="images/rss.png" width="17" height="17" alt="" class="rss" /></h1>
<h2><img src="images/news-image.png" width="209" height="105" alt="" /></h2>
<h3>There are many variations</h3>
<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry...<a href="#">Read More +</a></p>
</div>
<!--Campus News Part End-->

</div>
<div class="sidebar-center"><img src="images/sitebar-bottom.png" width="269" height="20" alt="" /></div>

</div>

</div>
<!--Sidebar Part End-->


</div>






</div>
<!--Content End-->



</div>

<!--Footer Start-->
<div id="footer">

<div class="footer-top">
<div class="footer-top-inner">

<div class="footer-menu">

<!--Footer Menu1 Start-->

<div class="general">
<h1>General info</h1>
<ul>
<li><a href="#">Visit</a></li>
<li><a href="#">Maps</a></li>
<li><a href="#">History </a></li>
<li><a href="#">Diversity</a></li>
<li><a href="#">Administration</a></li>
<li><a href="#">Accreditation Status</a></li>
</ul>
</div>

<!--Footer Menu1 End-->

<!--Footer Menu2 Start-->
<div class="university">
<h1>Wieldstrem University</h1>
<ul>
<li><a href="#">Blackboard</a></li>
<li><a href="#">Calendars</a></li>
<li><a href="#">Class Schedule </a></li>
<li><a href="#">Colonel's Compass</a></li>
<li><a href="#">Green Initiatives</a></li>
<li><a href="#">Faculty/Staff Email</a></li>
</ul>
</div>
<!--Footer Menu2 End-->

<!--Footer Menu3 Start-->
<div class="quick">
<h1>Quick Link</h1>
<ul>
<li><a href="#">Colleges &amp; Departments</a></li>
<li><a href="#">Community Education</a></li>
<li><a href="#">Conferencing &amp; Events </a></li>
<li><a href="#">Employment &amp; Benefits</a></li>
<li><a href="#">Financial Aid</a></li>
<li><a href="#">Information Technology</a></li>
</ul>
</div>
<!--Footer Menu3 End-->

<!--Footer About Part Start-->
<div class="about">
<h1>About Wieldstrem University</h1>
<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.<a href="#">Read More +</a></p>
</div>
<!--Footer About Part End-->

</div>

<div class="footer-bottom">

<!--Copyright Part Start-->
<div class="footer-copy">Copyright &copy; 2012 Wieldstrem University. All Rights Reserved.<br />Wieldstrem University, Strem Valley , Stoviana 258963.<br />
<b>Call :  1800-895-985 <a href="#">|</a> Fax  :  859 582 6975 <a href="#">|</a> Email  :  info@wieldstremuniversity.com</b>
</div>
<!--Copyright Part End-->

<!--Footer logo Part Start-->
<div class="footer-logo"><img src="images/footer-logo.png" width="262" height="57" alt="" /></div>
<!--Footer logo Part End-->

</div>

</div>
</div>


</div>
<!--Footer End-->

</div>
<div id="backtotop"><a href="#"></a></div>
<!--Wrapper End-->

<script type="text/javascript">
var main_menu=new main_menu.dd("main_menu");
main_menu.init("main_menu","menuhover");
</script>
</body>


</html>
