<?php 
session_start();

?>
<style>
.login{
	margin-left:500px;
	margin-top:220px;
	
}
body{
	background-image:url("admin.jpg");
	background-repeat:no-repeat;
	background-size:cover;
}
</style>
<!DOCTYPE>
<html>
	<head>
	<link rel="stylesheet" href="../css/bootstrap.min.css"/>
		<title>Login Form</title>
<link rel="stylesheet" href="styles/login_style.css" media="all" /> 

	</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">	
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand" style="margin-left:570px;">PaisaVasool Admin Panel</a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			
</div>
</div>
</div>
<div class="login">	
	<h1 style="color:black; margin-left:100px;">Admin Login</h1>
    <form method="post" action="login.php">
    	<input type="text" name="email" placeholder="Eamil" required="required" />
        <input type="password" name="password" placeholder="Password" required="required" />
        <button type="submit" name="login">Login</button>
    </form>
</div>


</body>
</html>
<?php 

include("db.php"); 
	
	if(isset($_POST['login'])){
	// backed up mysqli_real_escape_string($_POST['email']) ,mysqli_real_escape_string($_POST['password'];;
		$email = $_POST['email'];
		$pass =  $_POST['password'];
	
	$sel_user = "select * from admins where user_email='$email' AND user_pass='$pass'";
	
	$run_user = mysqli_query($con, $sel_user); 
	 $check_user = mysqli_num_rows($run_user); 
	
	if($check_user==1){
	
	$_SESSION['user_email']=$email; 
	
	echo "<script>window.open('index.php?logged_in=You have successfully Logged in!','_self')</script>";
	
	}
	else {
	
	echo "<script>alert('Password or Email is wrong, try again!')</script>";
	
	}
	
	
	}
	
	
	
	
	








?>