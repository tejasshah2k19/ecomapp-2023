<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
	<form action="sendotpforforgetpassword" method="post">

		Email :<input type="email" name="email"><br>
		<br> <input type="submit" value="Send Otp" />
	</form>
	<br>
	<br>

	<a href="login">LogIn</a>
</body>
</html>