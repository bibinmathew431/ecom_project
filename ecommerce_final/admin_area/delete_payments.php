<?php 
	include("db.php"); 
	
	if(isset($_GET['delete_p'])){
	
	$delete_id = $_GET['delete_p'];
	
	$delete_payments = "delete from payments where payment_id='$delete_id'"; 
	
	$run_delete = mysqli_query($con, $delete_payments); 
	
	if($run_delete){
	
	echo "<script>alert('A payment data has been deleted!')</script>";
	echo "<script>window.open('index.php?view_payments','_self')</script>";
	}
	
	}





?>