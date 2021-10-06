<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
	<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/96fb24df34.js" crossorigin="anonymous"></script>
	
<title>Insert title here</title>
<style>
	body {
	    margin: 0;
	}
	
	div {
	    box-sizing: border-box;
	}
	a {
	    color: inherit;
	}
	
	.main-container {
	    display: flex;
	    width: 100vw;
	    height: 100vh;
	    overflow: hidden;
	}
	
	.ivh-container {
	    width: 30%;
	    height: 100%;
	    background-color: #daebf3;
	    display: flex;
	    flex-flow: column;
	}
	
	.login-container {
	    width: 70%;
	    height: 100%;
	    background-color: white;
	}
	
	.ivh-container-title-cotainer {
	    width: 100%;
	    height: 80%;
	    margin: auto;
	    text-align: center;
	}
	.ivh-container-title-cotainer p{
	   margin: 5px;
	    font-weight: 500;
	}
	.ivh-container-title-cotainer h1{
	    margin-top: 200px;
	    font-weight: 700;
	    font-size: 70px;
	}
	
	.ivh-container-img-container {
	    width: 100%;
	    height: 20%;
	}
	.ivh-container-img-container img {
	    width: 100%;
	}
	
	.img-box {
	    width: 120px;
	    height: 40px;
	    margin: auto;
	}
	
	.login-sub-container {
	    width: 40%;
	    height: 65%;
	    background-color:white;
	    margin: auto;
	    margin-top: 150px;
	}
	
	.login-sub-container-line {
	    display: flex;
	    width: 100%;
	    height: 20px;
	    text-align: center;
	    color:#b4b4b4;
	}
	
	.login-sub-container-sns {
	    width: 100%;
	    height: 100px;
	    display: flex;
	    justify-content: center;    
	    margin-bottom: 20px;
	}
	
	.login-sub-container-title {
	    width: 100%;
	    margin-left: 40px;
	}
	
	.login-sub-container-title p{
	    margin: 0;
	    color:#b4b4b4;
	}
	
	.login-line {
	    margin-top: 10px;
	    width: 150px;
	    height: 1px;
	    border: 1px solid #ddeff7;
	    color: #eee;
	}
	
	.login-sub-container-input {
	    display: flex;
	    flex-flow: column;
	}
	
	.login-sub-container-form {
	    display: flex;
	    flex-flow: column;
	}
	
	
	.firstinput {
	    background-color: #daebf3;
	    width: 450px;
	    margin: auto;
	    border-radius: 20px;
	    margin-top: 25px;
	    height: 45px;
	    text-align: center;
	    border: 1px solid #daebf3;
	    
	}
	
	.forgot-signup-box {
	    display: flex;
	    justify-content: space-around;
	    color: #006599;
	}
	.forgot-signup-box p{
	    margin-top: 25px;
	}
	
	.forgot-signup:hover {
	    text-decoration: underline;
	    cursor: pointer;
	    color: dodgerblue;
	}
	
	
	.signin-button {
	    width: 150px;
	    height: 45px;
	    margin: auto;
	    margin-top: 40px;
	    border-radius: 25px;
	    color: white;
	    background-color: #006599;
	    border: 1px solid #006599;
	    
	}
	.login-container a{
	    text-decoration: none;
	}
	
	.google-box {
	    margin-top: 30px;
	    width: 50px;
	    height: 50px;
	    border-radius: 50px;
	    background-color: #aed8ec;
	    text-align: center;
	    font-size: 32px;
	    color: white;
	    margin-right: 40px;
	}
	
	.facebook-box {
	    margin-top: 30px;
	    width: 50px;
	    height: 50px;
	    border-radius: 50px;
	    background-color: #aed8ec;
	    text-align: center;
	    font-size: 32px;
	    color: white;
	    margin-right: 40px;
	}
	
	.twitter-box {
	    margin-top: 30px;
	    width: 50px;
	    height: 50px;
	    border-radius: 50px;
	    background-color: #aed8ec;
	    text-align: center;
	    font-size: 32px;
	    color: white;
	}

</style>
</head>
<body>
	<div class="main-container">
		<div class="ivh-container">
		    <div class="ivh-container-title-cotainer">
				<h1>HELLO</h1>
				<p style="margin-top: 50px;">Enter Your personal details</p>
				<p>and start journey with us</p>
			</div>
			<div class="ivh-container-img-container">
				<div class="img-box">
					<a href="https://imgur.com/qkf5uvv"><img src="https://i.imgur.com/qkf5uvv.png" title="source: imgur.com" /></a>
				</div>
			</div>
		</div>
		<div class="login-container">
			<div class="login-sub-container">
			    <div class="login-sub-container-title">
					<h2>Login</h2>
					<p>Log in with your data that you entered</p>
					<p>during your registration</p>    
				</div>
				<div class="login-sub-container-sns">
					<div class="google-box"><i class="fab fa-google"></i></div>
					<div class="facebook-box"><i class="fab fa-facebook-f"></i></div>
					<div class="twitter-box"><i class="fab fa-twitter"></i></div>
				</div>
				<div class="login-sub-container-line">
					<div style="margin: auto; display: flex;">
						<span class="login-line" style="margin-right: 25px;"></span>
							<p style="font-size: 12px;">or do it via E-mail</p>
						<span class="login-line" style="margin-left: 25px;"></span>
					</div>
				 </div>
				 <div class="login-sub-container-input">
					<form class="login-sub-container-form" action="login.me" method="post">
						<input type="text" placeholder="Email" class="firstinput" id="memberId" name="memberId">    
						<input type="password" placeholder="Password" class="firstinput" style="margin-top: 10px;" id="memberPwd" name="memberPwd" >
						
						<div class="checkbox-box">
							<input type="checkbox" style="margin-left: 60px; margin-top: 15px;"> <span>Remember me</span>
						</div>
						<div class="forgot-signup-box">
							<p class="forgot-signup">Forgot your password?</p>
							<p class="forgot-signup"><a href="enrollForm.me">Sign up</a></p>
						</div>
						<button type="submit" class="signin-button">SIGN IN</button>
					</form>
				</div>               
			</div>
		</div>
	</div>
	
	
	
</body>
</html>