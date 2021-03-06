<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
</head>
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
        width: 100%;
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
    .ivh-container-title-container {
        width: 100%;
        height: 80%;
        margin: auto;
        text-align: center;
    }
    .ivh-container-title-container p{
        margin: 5px;
        font-weight: 500;
    }
    .ivh-container-title-container h1{
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
    
    .rounded-circle{
    	width:200px; 
    	height:200px;
    	border-radius: 100px;
    }

    .login-sub-container {
        width: 40%;
        height: 65%;
        background-color:white;
        margin: auto;
        margin-top: 150px;
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
    }
    .login-sub-container-title h2{
        margin-bottom: 15px;
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
        text-align: left;
        border: 1px solid #daebf3;
        padding-left: 25px;
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
    
    .edit-button{
    	width: 80px;
    	margin : auto;
    	border-radius: 25px;
    	color: white;
        background-color: #666666;
        border: 1px solid #666666;
    }
    
    .login-container a{
        text-decoration: none;
    }
    
    /*
    .fileEdit{
    	margin-left: 110px; 
    	margin-top: 5px; 
    	margin-bottom: 10px;
    }
    #delete{
    	margin-left: 20px;
    }
    */

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
        color: #006599;
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
    .delete-account-container{
        text-align: right;
        margin-right:50px;
        
    }
    .delete-account-button{
        width: 80px;
        height: 30px;
        font-size: 10px;
        margin: auto;
        border-radius: 20px;
        color: white;
        background-color: #666666;
        border: 1px solid #666666;
    }
</style>
<body>

	<div class="main-container">
        <div class="ivh-container">
            <div class="ivh-container-title-container">
                <br> <br>
                <h1>My profile</h1><br> <br>
                <div class="button-container" >
                	<!-- ?????? ????????? 
                	<button type="button" class="signin-button" id="modal_btn" >??????</button> -->
                	
                    <button type="button" class="signin-button" id="changeBtn" data-toggle="modal" data-target="#changeForm" style="margin-right : 20px;">Change</button>
                    <button type="button" class="signin-button" id="backBtn" onclick="back();">Back</button>
                </div>

                <script>
                    function back(){
                        window.history.back();
                    }
                </script>
                
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
                 <div class="login-sub-container-input">
                 	<form class="login-sub-container-form" id="updateForm" method="post" action="updateProfile.me" enctype="multipart/form-data"> 
	                 	<input type="hidden" name="memberProfile" value="${loginUser.memberProfile}">  
	                 	<div class="form-group" align="center">
	                 		<c:choose>
				            	<c:when test="${empty loginUser.memberProfile}">    
						            <div class="profile-box">
                                       	<img src="https://i.imgur.com/pO4OGIl.jpg" class="rounded-circle" id="preview" >
                                   	</div>
					           	</c:when>
					           	<c:otherwise>
					           	 	<div class="profile-box">
                                         <img src="${loginUser.memberProfile}" class="rounded-circle" id="preview" > 
                                    </div> 
					           	</c:otherwise> 
				            </c:choose>
			                <br>
	                 		<div class="fileEdit">
	                 			
                                <button class="edit-button" type="reset" id="delete">Reset</button>
                                <button class="edit-button" type="submit" id="edit">Edit</button>
                                
                                <input type="file" name="upfile" id="upfile" accept="image/*" style="display: none;">
                            	<input type="hidden" id="deleteProfile" name="deleteProfile">
                            </div>
	                 		
                    		<input type="text" class="firstinput" id="memberName" name="memberName" value="${loginUser.memberName}" readonly>    
	                        <input type="email" class="firstinput" style="margin-top: 10px;" id="memberId" name="memberId" value="${loginUser.memberId}" readonly>
	                        <input type="Password" placeholder="Password" class="firstinput" style="margin-top: 10px;" id="memberPwd" name="memberPwd" value="${ loginUser.memberPwd }">
	                        <input type="Password" placeholder="Repeat Password" class="firstinput" style="margin-top: 10px;" value="${ loginUser.memberPwd }">
	                        <input type="text" placeholder="Phone Number" class="firstinput" style="margin-top: 10px;" id="memberPhone" name="memberPhone" value="${loginUser.memberPhone}">
                    	
                    	</div>
                    	
                    </form>
                  
                </div> 
              
                <div class="delete-account-container">
                    <button type="button" class="delete-account-button" data-toggle="modal" data-target="#deleteForm" onclick="ajaxInfo();">Delete Account</button> 
                </div> 
               
                            
            </div>
        </div>
    </div>
    
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="js/jquery.keyframes.js"></script>
    
    
    <!-- ????????? ?????? ???????????? -->
    <script>
	    function handleFileSelect(event) {
		  	var input = this;
				if (input.files && input.files.length) {
			    	var reader = new FileReader();
			        this.enabled = false
			        reader.onload = (function (e) {
			            $("#preview").attr("src", e.target.result);
			        });
			        reader.readAsDataURL(input.files[0]);
			    }
		}
		
		$('#upfile').change(handleFileSelect);
		$('.fileEdit').on('click', '#delete', function () {
		    $("#preview").removeAttr("src").attr("src", "https://i.imgur.com/pO4OGIl.jpg"); // ?????????????????????
		    $("#upfile").val(""); //??????????????? ??????
		    $("#deleteProfile").val("delete"); // ?????????????????? ??????????????? ??????????????? ?????????
		});
		
		$("#upfile").change(handleFileSelect);
		$("#preview").click( function() {
			$("#upfile").click();
		});
    	
    </script>
    
    
    <!-- ?????? ????????? 
    <div class="black_bg"></div>
    <div class="modal_wrap">
    	<div class="modal_close"><a href="#">Close</a></div>
    	<div>
    		Content
    	</div>
    </div>
    
    <script>
    	window.onload = function() {
    		
    		function onClick() {
    			document.querySelector('.modal_wrap').style.display = 'block';
    			document.querySelector('.black_bg').style.display = 'block';
    		}
    		function offClick() {
    			document.querySelector('.modal_wrap').style.display = 'none';
    			document.querySelector('.black_bg').style.display = 'none';
    		}
    		
    		document.getElementById('modal_btn').addEventListener('click', onClick);
    		document.qeurySelector('.modal_close').addEventListener('click', offClick);
    	};
    </script>
    -->
    
    <!-- change ?????? ????????? ?????? Modal -->
    <form  action="updatePwd.me" method="post">
	    <div class="modal fade" id="changeForm" tabindex="-1" role="dialog" aria-labelleadby="modalLable" aria-hidden="true">
	    	<div class="modal-dialog">
	    		<div class="modal-content">
	    		
	    			<div class="modal-header">
	    				<h4 class="modal-title" id="modalLabel1">???????????? ??????</h4>
	    			</div>
	    			
	    			<div class="modal-body">
	    				<table>
	    					<!-- <tr>?????? ???????????? : <input type="password" id="checkPwd"></tr> <br><br> -->
	    					<tr>??? ???????????? : <input type="password" id="newPwd" name="newPwd"></tr> <br><br>
	    					<tr>??? ???????????? ?????? : <input type="password" id="newPwdCheck" name="newPwdCheck"></tr> <br><br>
	    				</table>
	    			</div>
	    			
	    			<div class="modal-footer">
	    				<input type="hidden" name="memberId" value="${loginUser.memberId}" >
	    				<input type="hidden" name="memberPwd" value="${loginUser.memberPwd}" >
	    				<button type="submit" class="btn btn-danger" id="changeBtn" onclick="updatePwd();">Change</button>
	    			</div>
	    		</div>
	    	</div>
	    </div>
    </form>
    
    <script>
    	function updatePwd(){
    		var newPwd = documnet.getElemnetById('newPwd').value;
    		var newPwdCheck = document.getElementByID('newPwdCheck').value;
    		
    		if(newPwd != newPwdCheckPwd) {
    			alert("??????????????? ?????? ?????? ????????????.");
    		} else {
    			window.location.href = "myPage.me";
    		}
    		
    	}
    </script>
    
    
    <!-- ?????? ???????????? ?????? ajax 
    <script>
    	$(function(){
    		var checkPwd = $("#checkPwd");
    		
    		checkPwd.keyup(function(){
    			
    			$.ajax({
    				url:"pwd.me",
    				data:{checkPwd:checkPwd.val()},
    				seccess:function(result){
    					if(result == "N") { // ???????????????
    						console.log("???????????? ?????????");
    						$("#confirmPwd").val("no");
    					} else { // ????????????
    						console.log("???????????? ??????");
    						$("#confirmPwd").val("ok");
    					}
    				}, error:function(){
    					console.log("ajax ?????? ??????")
    				}
    			})
    		})
    	})
    </script> -->
    
    
    <!-- ???????????? ????????? ?????? 
    <script>
    
    	function updatePwd(){
    		var newPwd = $("#newPwd").val();
    		var newPwdCheck = $("newPwdCheck").val();
    		
    		if(newPwd == newPwdCheck) { // ??? ?????? ????????? ???
    			
    			if( $("#confirmPwd").val()=="ok"){
	    			
	    			var result = confirm("??????????????? ?????? ???????????????????");
                	
                	if(result){
                		
                		
                	} else {
                		alert("?????????????????????");
                		return false;
                	}
	    			
	    			
	    		} else {
	    			
	    			alert("?????? ??????????????? ????????????????????????");
	    			$("#checkPwd").val("");
	    			$("#checkPwd").focus();
	    			return false;
	    		}
    			
    		} else {
    			
    			alert("??? ??????????????? ????????????????????????.");
    			$("#newPwdCheck").val("");
    			$("#newPwdCheck").focus();
    			return false;
    		}
    	}
    
    </script>-->
    
    
    <!-- ???????????? ?????? ????????? ?????? Modal -->
    <form id="deleteModal" action="delete.me" method="post">
	    <div class="modal" id="deleteForm">
	    	<div class="modal-dialog">
	    		<div class="modal-content">
	    		
	    			<!-- Modal Header -->
	    			<div class="modal-header">
		                <h4 class="modal-title">????????????</h4>
		                <button type="button" class="close" data-dismiss="modal">&times;</button>
	                </div>
	                
	                <!-- Modal body -->
	                <div class="modal-body" align="center">
	                    <b>
				                        ?????? ??? ????????? ??????????????????. <br>   
				                        ????????? ?????? ???????????????????
	                    </b>
	                    <br>
	                    <div class="deleteMo">
	                                                      ???????????? : 
	                        <input type="password" name="memberPwd" required>
	                        <input type="hidden" name="memberId" value="${ loginUser.memberId }">
	                        <button type="submit" class="btn btn-danger">????????????</button>
	                    </div>
	                </div>
	    		</div>
	    	</div>
	    </div>
    </form>
    
    <!-- 
    <script>
	    function ajaxInfo(){
			var $memberId = $(event.target).parent().siblings(".mId").text();
			console.log("$memberId");
			
			$.ajax({
		    	url:"delete.mo",
		    	data:{mId:$memberId},
		    	success:function(m){
		    		console.log(m);
		    	}, error: function(){
		    		console.log("?????? ?????? ??????");
		    	}
		    });
		}
    </script>
     -->

</body>
</html>