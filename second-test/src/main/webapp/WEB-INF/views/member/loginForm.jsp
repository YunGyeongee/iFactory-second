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
	    background-color: #1b2944;
	    display: flex;
	    flex-flow: column;
	    color: #fff;
	}
	.login-container {
	    width: 70%;
	    height: 100%;
	    background-color: #0c172b;
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
	    font-size: 75px;
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
	    margin-top: 90px;
	}
	.login-sub-container {
	    width: 40%;
	    height: 65%;
	    background-color:#0c172b;
	    margin: auto;
	    margin-top: 170px;
	    color: #fff;
	}
	.login-sub-container-line {
	display: flex;
	    width: 100%;
	    height: 20px;
	    text-align: center;
	   color:#fff;
	}
	.login-sub-container-sns {
	    width: 100%;
	    height: 100px;
	    display: flex;
	    justify-content: center;    
	    margin-bottom: 30px;
	}
	.login-sub-container-title {
	    width: 100%;
	    margin-left: 40px;
	    color: #fff;
	    margin-bottom: 10px;
	}
	.login-sub-container-title p {
	    color: white;
	    margin: 0;
	}
	
	.login-line {
	    margin-top: 10px;
	    width: 150px;
	    height: 1px;
	    border: 1px solid #253863;
	    color: #253863;
	}
	.login-sub-container-input {
	    display: flex;
	    flex-flow: column;
	    margin-top: 10px;
	}
	.login-sub-container-form {
	    display: flex;
	    flex-flow: column;
	}
	
	.firstinput {
	    background-color: #253863;
	    width: 450px;
	    margin: auto;
	    border-radius: 40px;
	    margin-top: 25px;
	    height: 55px;    
	    border: 1px solid #253863;
	    padding-left: 15px;
	}
	::placeholder {
	    color: #fff;
	}
	
	.forgot-signup-box {
	    display: flex;
	    justify-content: space-around;
	    color: #eee;
	    margin-top: 30px;
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
	    width: 200px;
	    height: 50px;
	    margin: auto;
	    margin-top: 40px;
	    border-radius: 25px;
	    color: #1b2944;
	    font-weight: 600;
	    background-color: #fff;
	    border: 1px solid #fff;
	    font-size: 25px;
	}
	login-container a{
	    text-decoration: none;
	}
	
	.goolge-box {
	   margin-top: 30px;
	    width: 50px;
	    height: 50px;
	    border-radius: 50px;
	    background-color: #253863;
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
	    background-color: #253863;
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
	    background-color: #253863;
	    text-align: center;
	    font-size: 32px;
	    color: white;
	}
	
	.checkbox-box {
	    text-align: left;
	    margin-top: 10px;
	    color: #eee;
	}
	.checkbox-box span {
	    color: #eee;
	}

</style>
</head>
<body>
	<div class="main-container">
        <div class="ivh-container">
            <div class="ivh-container-title-cotainer">
            <br/><br/><h1>HELLO</h1><br/><br/>
            <p style="margin-top: 50px;">Welcome to mPlus intelligent 
            <br/>
            smart factory system</p>
            <br/>
            <p>You can check the PHM and production quality <br/>
                of mPlus battery production system. <br/>
           
            If you do not have an ID, contact the administrator</p>
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
                    <p style="margin-top: 15px;">Log in with your data that you entered</p>
                    <p>during your registration</p>    
                </div>
                <div class="login-sub-container-sns">
                    <div class="goolge-box"><i class="fab fa-google"></i></div>
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
					</form>
					<p class="signin-button" align="center"><a href="main.in">SIGN IN</p>
				</div>               
			</div>
		</div>
	</div>
	
	
	
</body>
</html>