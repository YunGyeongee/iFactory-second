<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<!-- fontawesome -->
	<script src="https://kit.fontawesome.com/96fb24df34.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="css/all.css">
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
	    background-color: #253863;
	    display: flex;
	    flex-flow: column;
	    color: #fff;
	}
	.login-container {
	    width: 70%;
	    height: 100%;
	    background-color: #1b2944;
	    color: #fff;
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
	    color: #fff;
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
	    background-color:#1b2944;
	    margin: auto;
	    margin-top: 180px;
	}
	.login-sub-container p{
	    margin-top: 0px;
	    font-weight: 600;
	}
	.login-sub-container-line {
	    display: flex;
	    width: 100%;
	    height: 20px;
	    text-align: center;
	    color:#b4b4b4;
	}
	.login-sub-container-sns {
	    width: 35%;
	    height: 100px;
	    display: flex;
	    justify-content: space-between;    
	    margin-left: 15px;
	    margin-top: 0xp;
	}
	.login-sub-container-title {
	    width: 100%;
	    margin-left: 40px;
	    color: #fff;
	}
	.login-sub-container-title h2{
	    margin-bottom: 15px;
	}
	.login-sub-container-title p{
	    margin: 0;
	    color:#fff;
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
	    background-color: #253863;
	    width: 450px;
	    margin: auto;
	    border-radius: 30px;
	    margin-top: 25px;
	    height: 55px;
	    text-align: left;
	    border: 1px solid #253863;
	    padding-left: 25px;
	    
	}
	.firstinput::placeholder{
	    color: #fff;
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
	    width: 190px;
	    height: 55px;
	    margin: auto;
	    margin-top: 40px;
	    border-radius: 25px;
	    color: white;
	    background-color: #fff;
	    border: 1px solid #fff;
	    color: #253863;
	    font-size: 25px;
	    font-weight: 700;
	}
	login-container a{
	    text-decoration: none;
	}
	
	.goolge-box {
	    margin-top: 30px;
	    width: 40px;
	    height: 40px;
	    border-radius: 50px;
	    background-color: #253863;
	    text-align: center;
	    font-size: 28px;
	    color: white;
	}
	.facebook-box {
	    margin-top: 30px;
	    width: 40px;
	    height: 40px;
	    border-radius: 50px;
	    background-color: #253863;
	    text-align: center;
	    font-size: 28px;
	    color: white;
	}
	.twitter-box {
	   margin-top: 30px;
	    width: 40px;
	    height: 40px;
	    border-radius: 50px;
	    background-color: #253863;
	    text-align: center;
	    font-size: 28px;
	    color: white;
	}
	
	.checkbox-box {
	    text-align: left;
	    margin-top: 10px;
	}
	.login-sub-container-sns-text-container {
	    width: 90%;
	    height: 100px;
	    display: flex;
	    margin: auto;
	    margin-bottom: 0px;
	}
	
	.login-sub-container-account-box {
	    width: 65%;
	    height: 100px;
	    margin-left: 30px;
	    color: #fff;
	}
	.login-sub-container-account-box p{
	    display: block;
	    margin: auto;
	    margin-top: 40px;
	    margin-left: 50px;
	    margin-bottom: 5px;
	    font-size: 16px;
	}
	.account-box-border {
	    border: 1px solid #aed8ec;
	    width: 235px;
	    height: 2px;
	    display: block;
	    margin: auto;
	    background-color: #aed8ec;
	}
	.spanColor {
	    color: palevioletred;
	}

</style>
</head>
<body>
    <div class="main-container">
      <div class="ivh-container">
        <div class="ivh-container-title-cotainer">
          <br> <br>
          <h1>WELCOME</h1>
          <br> <br>
          
          <p style="margin-top: 50px;">Welcome to mPlus inteligent</p>
          <p>smart factroy system</p>
          <br>
          <p>You can check the PHM and prodcution quality</p>
          <p>of mPlus battery production system</p>
          <p>If you do not have an ID, contact the administrator.</p>
        </div>
          <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
        <div class="ivh-container-img-container">
          <div class="img-box">
          	<a href="https://imgur.com/qkf5uvv"><img src="https://i.imgur.com/qkf5uvv.png" title="source: imgur.com" /></a>
          </div>
        </div>
      </div>
      <div class="login-container">
        <div class="login-sub-container">
          <div class="login-sub-container-title">
            <h2>Join Our service!</h2>
            <p>Discover your perfet university</p>    
          </div>
          <div class="login-sub-container-sns-text-container">
            <div class="login-sub-container-sns">
              <div class="goolge-box"><i class="fab fa-google"></i></div>
                <div class="facebook-box"><i class="fab fa-facebook-f"></i></div>
                  <div class="twitter-box"><i class="fab fa-twitter"></i></div>                
              </div>
              <div class="login-sub-container-account-box">
                <p>Have an account? Log in</p>
                <span class="account-box-border"></span>
                  </div>
              </div>
              <div class="login-sub-container-input">
                <form class="login-sub-container-form" id="enrollForm" method="post" action="insert.me">
                  <input type="text" placeholder="Name" class="firstinput" id="memberName" name="memberName" required>    
                  <input type="text" placeholder="Email" class="firstinput" style="margin-top: 10px;" id="memberId" name="memberId" required>
                  <div id="checkId" style="display:none; font-size:0.8em;"></div>
                  <input type="password" placeholder="Password" class="firstinput" style="margin-top: 10px;" id="memberPwd" name="memberPwd" required>
                  <input type="password" placeholder="Repeat Password" class="firstinput" style="margin-top: 10px;" id="checkPwd" name="checkPwd" required>
                  <input type="text" placeholder="Phone Number" class="firstinput" style="margin-top: 10px;" id="memberPhone"  name="memberPhone" required>
                  
                  <div class="checkbox-box">
                    <input type="checkbox" style="margin-left: 60px; margin-top: 15px;"> <span class="spanColor">I agree to JOIN's terms and conditions as well as <br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp    the privacy policy </span>
                  </div>
                  <button type="submit" class="signin-button" id="enrollForm" ><a>SIGN UP</a></button>
                </form>
              </div>               
            </div>
        </div>
    </div>
    
    <script>
    
    	$(function(){
    		var $idInput = $("#enrollForm input[name=memberId]");
    		
    		$idInput.keyup(function(){
    			
    			// 최소 5글자 이상으로 입력
    			if($idInput.val().length >= 5) {
    				
    				$.ajax({
    					url : "idCheck.me",
    					data: {checkId:$idInput.val()},
    					success:function(result){
    						if(result == "N") { // 사용불가
    							$("#checkId").show();
    							$("#checkId").css("color", "red").text("중복된 아이디가 존재합니다. 다시 입력해주세요");
    							$("#signin-button").attr("disabled", true);
    						} else { // 사용가능
    							$("#checkId").show();
    							$("#checkId").css("color", "blue").text("사용가능한 아이디 입니다.");
    							$("#signin-button").removeAttr("disabled");
    						}
    					}, error:function(){
    						console.log("ajax 통신 실패");
    					}
    				})
    				
    			} else { // 5글자 미만일 경우 ==> 회원가입 버튼 비활성화
    				$("#signin-button").attr("disabled", true);
    				$("#checkId").hide();
    			}
    		})
    	})
    	
    </script>


</body>
</html>