
 <head>
   <link href="css/bootstrap.css" rel="stylesheet">
 </head>

<body>
<?php include("db.php"); ?>

<form method="post" id="form_poloce" action="public.php">
     <table class="table table-striped">
	 
	<tr> 
     <th> Coustmer ID</th>
	 <th> Coustmer Message </th>
	 <th> Coustmer To </th>
	 <th> Coustmer Form </th>
	 <th> Coustmer Status </th>
	 <th> Created At </th>
	</tr>
	
	<?php 
	
	$query = mysqli_query($con,"select * from complaint");
	while($row = mysqli_fetch_array($query)){
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
	</tr>
	<?php } ?>
	
    </table>
</form>
     <script src="js/jquery.js"></script>	
     <script src="js/costom.js"></script>		 
     <script src="js/bootstrap.js"></script>
</body>
