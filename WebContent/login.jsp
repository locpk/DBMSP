<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Manager Login</title>
<link rel="stylesheet" type="text/css" href="css/login-style.css" />
</head>
<body>
<div class="container">
	<section id="content">
		<form method="POST" action='Login' name="welcome">
			<h1>Manager Login</h1>
			<div>
				<input type="text" placeholder="Username" required="" id="username"  name="userName"/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" name="Password"/>
			</div>
			<div>
				<input type="submit" name="Submit" value="submit"/>
			</div>
		</form><!-- form -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>