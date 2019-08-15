<?php 
session_start(); 

if(!isset($_SESSION['user_email'])){
	
	echo "<script>window.open('login.php?not_admin=You are not an Admin!','_self')</script>";
}
else {

?>

<!DOCTYPE> 

<html>
	<head>
		<title>This is Admin Panel</title> 
		
	<link rel="stylesheet" href="styles/style.css" media="all" /> 
	<style>
	#links{
		margin-left:50px;
		
	}
	a{
		font-size:20px;
	}
	body{
		background-color:#ffffcc;
		
	}
	</style>
	</head>


<body> 

	<div class="main_wrapper">
	
	
		<div id="header"></div>
		
		<div id="right">
		<h2 style="text-align:center;">Manage Content</h2>
			<div id="links">
			<a href="index.php?insert_product" id="links">Insert New Product</a>
			<a href="index.php?view_products" id="links">Products edit and delete</a>
			<a href="logout.php" id="links">Admin Logout</a>
			<a href="index.php?view_orders" id="links">View All Orders</a>
			<a href="index.php?view_customers" id="links">View All Customers</a>
			<a href="index.php?view_payments" id="links">View All Payments</a>
			</div>
		</div>
		
		<div id="left">
		<h2 style="color:red; text-align:center;"><?php echo @$_GET['logged_in']; ?></h2>
		<?php 
		if(isset($_GET['insert_product'])){
		
		include("insert_product.php"); 
		
		}
		if(isset($_GET['view_products'])){
		
		include("view_products.php"); 
		
		}
		if(isset($_GET['edit_pro'])){
		
		include("edit_pro.php"); 
		
		}
		if(isset($_GET['delete_pro'])){
		
		include("delete_pro.php"); 
		}
		if(isset($_GET['view_orders'])){
		
		include("view_orders.php"); 
		
		}
		if(isset($_GET['view_customers'])){
		
		include("view_customers.php"); 
		
		}
		if(isset($_GET['view_payments'])){
		
		include("view_payments.php"); 
		
		}
		?>
		</div>
	</div>


</body>
</html>

<?php } ?>