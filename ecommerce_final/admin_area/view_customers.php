
<table width="795" align="center" bgcolor="orange"> 

	
	<tr align="center">
		<td colspan="6"><h2>View All Customers Here</h2></td>
	</tr>
	
	<tr align="center" bgcolor="grey">
		<th>S.N</th>
		<th>Name</th>
		<th>Email</th>
		<th>Delete</th>
	</tr>
	<?php 
	include("db.php");
	
	$get_c = "select * from user_info";
	
	$run_c = mysqli_query($con, $get_c); 
	
	$i = 0;
	
	while ($row_c=mysqli_fetch_array($run_c)){
		
		$c_id = $row_c['user_id'];
		$c_name = $row_c['first_name'];
		$c_email = $row_c['email'];
		$i++;
	
	?>
	<tr align="center">
		<td><?php echo $i;?></td>
		<td><?php echo $c_name;?></td>
		<td><?php echo $c_email;?></td>
		<td><a href="delete_c.php?delete_c=<?php echo $c_id;?>">Delete</a></td>
	
	</tr>
	<?php } ?>




</table>