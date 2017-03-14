<?php 
   session_start();
   include("db.php");
    if(!isset($_SESSION['u_police'])){
	 header("location: index.php");
   }else{
 ?>
 <head>
   <link href="css/bootstrap.css" rel="stylesheet">
   <link href="css/costom_reply.css" rel="stylesheet">
 </head>
     
	<?php 
	   $id = $_GET['reply_ngo'];
	   $query = mysqli_query($con ,"SELECT * FROM complaint WHERE u_id='$id' ");
	   
	   $row = mysqli_fetch_array($query);
		   $complaint = $row['c_msg'];
		   $status = $row['c_status'];
	   
	?>
 
 <body>
 
    <form method="post">
    <div class="form-group">
    <label for="exampleInputEmail1">complaint</label>
    <div class="page-header">
	   <h1><?php  echo $complaint; ?></h1>
    </div> </div>
    <div class="form-group">
    <label for="exampleInputPassword1">Reply</label>
    <input type="textarea" class="form-control" name="reply_com" id="exampleInputPassword1" placeholder="Reply">
    </div>
  
  <button type="submit" name="reply_btn" class="btn btn-default">REPLY BY POLICE</button>
  <button type="submit" name="logout" class="btn btn-default"><a href="logout.php">LOGOUT</a></button>
  <?php 
    if(isset()
  
  
  ?>
</form>
     <script src="js/jquery.js"></script>	
     <script src="js/costom.js"></script>		 
     <script src="js/bootstrap.js"></script>
 </body>
 
 <?php 
   
   if(isset($_POST['reply_btn'])){
	$new_status = $status+1;
	$cr_to = 1003;
	$rep = $_POST['reply_com'];

	$query = mysqli_query($con," INSERT INTO `complain_com` (`reply`, `com_id`, `status`) VALUES ('$rep', '$cr_to', '$new_status'); ");
	if(isset($query)){
		header("location: ngo.php");
	}
	
	$query_update = mysqli_query($con," UPDATE `complaint` SET `c_status`='$new_status' where `u_id`='$id' ");
    }
   }
 ?>