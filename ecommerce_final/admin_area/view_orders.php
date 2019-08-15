<table width="795" align="center" bgcolor="orange"> 

	
	<tr align="center">
		<td colspan="6"><h2>View all orders here</h2></td>
	</tr>
	<tr align="center" bgcolor="grey">
		<th>S.N</th>
		<th> Order_Id </th>
		<th>User_Id </th>
		<th>Product</th>
		<th>Payment Status</th>
		<th> Delete </th>
	</tr>
	<?php 
	include("db.php");
	
	$get_order = "select * from orders";
	
	$run_order = mysqli_query($con, $get_order); 
	
	$i = 0;
	
	while ($row_order=mysqli_fetch_array($run_order)){
		$pro_id = $row_order['product_id'];
		$c_id = $row_order['user_id'];
		$o_id = $row_order ['order_id'];
		$i++;
		
		$get_pro = "select * from products where product_id='$pro_id'";
		$run_pro = mysqli_query($con, $get_pro); 
		
		$row_pro=mysqli_fetch_array($run_pro); 
		
		$pro_image = $row_pro['product_image']; 
		$pro_title = $row_pro['product_title'];
		
		$get_c = "select * from user_info where user_id='$c_id'";
		$run_c = mysqli_query($con, $get_c); 
		
		$row_c=mysqli_fetch_array($run_c); 
		
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $o_id;?></td>
		<td><?php echo $c_id;?></td>
		<td>
		<?php echo $pro_title;?><br>
		</td>
		<td>Completed</td>
		<td><a href="delete_o.php?delete_o=<?php echo $o_id;?>">Delete</a></td>
	
	</tr>
	<?php } ?>
</table>