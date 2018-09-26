<?php
ob_start();
session_start();
include_once 'login and registration form\dbconnect.php';

$id = $_GET['id'];

$about_link = "about.php?id=".$id;
$contact_link = "contact.php?id=".$id;
$courses_link = "courses.php?id=".$id;
$education_link = "education.php?id=".$id;
$publication_link = "publication.php?id=".$id;
$research_link = "research.php?id=".$id;



$sql = "SELECT * FROM `teacher` WHERE t_id='".$id."'";
$basic_info = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($basic_info);



$designation = $row['designation'];
$name = $row['name'];
$email = $row['email'];
$photo = $row['photo'];
$about = $row['about'];
$designation = $row['designation'];
$phone = $row['phone'];
$discipline = $row['discipline'];
$inst = $row['inst'];

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $name ?></title>
    <link rel="shortcut icon" href="logo.gif" type="image/gif">

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                <img src="<?php echo $photo; ?>">
                    <a class="info">                        
                       <H5><br><strong style="text-transform: uppercase; color:LavenderBlush "><?php echo $name; ?></strong><br><?php echo $designation ?><br><?php echo $discipline; ?><br><?php echo $inst; ?><br>Email: <?php echo $email ;?><br>Phone: <?php echo $phone ;?></H5>
                    </a>
                </li>
                <li>
                    <a href="<?php echo $about_link; ?>">About</a>
                </li>
                <li>
                    <a href="<?php echo $education_link; ?>">Education</a>
                </li>
                <li>
                    <a href="<?php echo $research_link; ?>">Research Interest</a>
                </li>
                <li>
                    <a href="<?php echo $publication_link; ?>">Publication</a>
                </li>
                <li>
                    <a href="<?php echo $courses_link; ?>">Courses</a>
                </li>
                <li>
                    <a href="<?php echo $contact_link; ?>">Contact</a>
                </li>
                <?php if (isset($_SESSION['usr_id'])) { ?>        
                <li class="uName" style="color:LavenderBlush "><a style="text-transform: uppercase;" >Logged in as <?php echo $_SESSION['usr_name']; ?></a></li>
                <li class="menu-item"><a href="login and registration form\logout.php">Log Out</a></li>   
                <?php } else { ?>
                <li class="SignIn"><a href="login and registration form\login.php">Login</a></li>
                <li class="SignIn"><a href="login and registration form\register.php">Sign Up</a></li>
                <?php } ?>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2>Contact Form</h2>
              <form id="ContactForm" action="#">
                <div>
                  <div  class="wrapper"> <strong>Name:</strong>
                    <div class="bg">
                      <input type="text" class="input" >
                    </div>
                  </div>
                  <div  class="wrapper"> <strong>Email:</strong>
                    <div class="bg">
                      <input type="text" class="input" >
                    </div>
                  </div>
                  <div  class="textarea_box"> <strong>Message:</strong>
                    <div class="bg">
                      <textarea name="textarea" cols="1" rows="1"></textarea>
                    </div>
                  </div>
                  <a href="#" class="button"><span><span>Send</span></span></a> <a href="#" class="button"><span><span>Clear</span></span></a> </div>
              </form>
            </div>
          </article>
          <!--<article class="col2 pad_left2">
            <div class="pad_left1">
              <h2>Miscellaneous <span>Info</span></h2>
              <p>Quia voluptas sit aspernatur aut odit aut fugit, seduia consequuntur magni dolores eos qui ratione. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non.<br>
                numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>
            </div>
          </article>-->
        </div>
      </div>
    </section>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>

</body>

</html>
