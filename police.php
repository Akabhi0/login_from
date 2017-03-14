<?php  
 session_start();
 if(!isset($_SESSION['u_police'])){
	 header("location: index.php");
   }else{
 ?> 
<head>
   <link href="css/bootstrap.css" rel="stylesheet">
   <link href="css/costom_com.css" rel="stylesheet">
</head>

<body>
<?php include("db.php"); ?>

<form method="post" id="form_poloce" action="police.php">
     <table class="table table-striped">
	 
	<tr> 
     <th> Coustmer ID</th>
	 <th> Coustmer Message </th>
	 <th> Coustmer To </th>
	 <th> Coustmer Form </th>
	 <th> Coustmer Status </th>
	 <th> Created At </th>
	 <th> Reply </th>
	</tr>
	
	<?php 
	
	$query = mysqli_query($con,"select * from complaint where c_to = 1002 ");
	while($row = mysqli_fetch_array($query)){
	  $u_id = $row['u_id'];
	  $id = $row['c_id'];
      $message = $row['c_msg'];
      $to = $row['c_to'];
	  $from = $row['c_from'];
	  $status = $row['c_status'];
	  $date = $row['created_at'];	  
	?>
	
	<tr>
	 <td><?php echo $id; ?></td>
	 <td><?php echo $message; ?></td>
	 <td><?php echo $to; ?></td>
	 <td><?php echo $from; ?></td>
	 <td><?php echo $status; ?></td>
	 <td><?php echo $date; ?></td>
	 <td><button class="btn btn-default"  name="reply" type="submit"><a href="reply.php?reply=<?php echo $u_id; ?>">Reply</a></button></td>
	</tr>
	<?php } ?>
    </table>
	<button type="submit" name="logout" id="button_police" class="btn btn-default"><a href="logout.php">LOGOUT</a></button>
</form>
     <script src="js/jquery.js"></script>	
     <script src="js/costom.js"></script>		 
     <script src="js/bootstrap.js"></script>
</body>
<?php 
if(isset($_POST['reply'])){ ?>
  
   <?php } }?>