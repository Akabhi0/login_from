<?php  
session_start();
?>
<!DOCTYPE html>
<head>
   <link href="css/bootstrap.css" rel="stylesheet">
   <link href = "css/costom.css" rel="stylesheet">
</head>

<body>
    
<form method="post" action="index.php">
  <div class="form-group">
    <label for="exampleInputEmail1">User Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="u_police" placeholder="User Name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="up_password" id="exampleInputPassword1" placeholder="Password">
  </div>
  
  <button type="submit" name="submit_police" class="btn btn-default">POLICE</button>
  <button type="submit" name="submit_ngo" class="btn btn-default">NGO</button>
  <button type="submit" name="submit_public" class="btn btn-default">PUBLIC</button>
  
</form>
     <script src="jquery.js"></script>							     
     <script src="js/bootstrap.js"></script>
</body>

<?php  //this is the code for the police admin pannel 
include("db.php");

  if(isset($_POST['submit_police'])){
	  
  $user_name = $_POST["u_police"];
  $user_pass = $_POST["up_password"];

  $query = mysqli_query($con , "select * from police where u_police='$user_name' AND up_password='$user_pass' ");

  if(mysqli_num_rows($query)){
	$_SESSION['u_police'] = $user_name;
	header("location: police.php"); 
  }else{
	  echo "<script>alert('user name and password is in vailid')</script>";
  }
  
  }
?>

<?php //this is the code for the NGO admin pannel

  if(isset($_POST['submit_ngo'])){
   
    $user_name = $_POST['u_police']; 
    $user_pass = $_POST['up_password'];

	$query = mysqli_query($con , "select * from ngo where u_ngo='$user_name' AND u_pass='$user_pass' ");

	  if(mysqli_num_rows($query)){
		$_SESSION['u_police'] = $user_name;
		header("location: ngo.php"); 
	  }else{
		  echo "<script>alert('user name and password is in vailid')</script>";
	  }
 	
	
  }
?>

<?php //this is the code for public complain
  
   if(isset($_POST['submit_public']))
    header("location: public.php");
 ?>