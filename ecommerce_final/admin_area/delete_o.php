<?php 
	include("db.php"); 
	
	if(isset($_GET['delete_o'])){
	
	$delete_id = $_GET['delete_o'];
	
	$delete_order = "delete from orders where order_id='$delete_id'"; 
	
	$run_delete = mysqli_query($con, $delete_order); 
	
	if($run_delete){
	
	echo "<script>alert('A order data has been deleted!')</script>";
	echo "<script>window.open('index.php?view_orders','_self')</script>";
	}
	
	}





?>