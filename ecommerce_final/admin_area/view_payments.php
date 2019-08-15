<html>
<title>
Payments
</title>
<body>
<table width="795" align="center" bgcolor="orange"> 

	
	<tr align="center">
		<td colspan="6"><h2>View all Payments here</h2></td>
	</tr>
	
	<tr align="center" bgcolor="grey">
		<th> Sr.no </th>
		<th>Payment_Id</th>
		<th>Amount </th>
		<th>Payment_Type</th>
		<th>First name </th>
		<th> Email </th>
		<th> Delete </th>
		
	</tr>
	<?php 
	include("db.php");
	
	$get_order = "select * from payments";
	
	$run_order = mysqli_query($con, $get_order); 
	
	$i = 0;
	//user_id,amount,payment_type,full_name,email,address,city,state,zip,name_card,credit_number,exp_month,exp_year,cvv
	while ($row_order=mysqli_fetch_array($run_order)){
		$p_id = $row_order['payment_id'];
		$amt = $row_order['amount'];
		$p_type = $row_order['payment_type'];
		$u_id = $row_order['user_id'];
		$f_name = $row_order['full_name'];
		$email = $row_order['email'];
		
		$i++;
?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $p_id;?></td>
		<td><?php echo $amt;?></td>
		<td><?php echo $p_type;?></td>
		<td><?php echo $f_name;?></td>
		<td><?php echo $email;?></td>
		<td><a href="delete_payments.php?delete_p=<?php echo $p_id;?>">Delete</a></td>
		
	</tr>
	<?php } ?>
</table>
</body>
</html>