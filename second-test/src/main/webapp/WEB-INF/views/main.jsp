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

    <script src="https://kit.fontawesome.com/96fb24df34.js" crossorigin="anonymous"></script>

<title>Smart Factory</title>
</head>
<style>
	body {
	  margin: 0;
	}
	
	div {
	  box-sizing: border-box;
	  font-family: "inter";
	}
	p,
	h4,
	h5,
	h3,
	h2,
	h1,
	span {
	  transform: rotate(0.04deg);
	}
	.navbar-container {
	  background-color: #ffffff;
	  width: 100%;
	  height: 10vh;
	  display: flex;
	}
	
	.logo-container {
	  width: 10%;
	  height: 100px;
	  background-color: #1b2944;
	  padding: 10px 20px 20px 20px;
	}
	
	.logo-container img {
	  width: 100%;
	}
	
	.search-date-container {
	  width: 60%;
	  height: 100px;
	  background-color: #1b2944;
	  display: flex;
	  color: white;
	}
	
	.search-date-container p {
	  margin-top: 33px;
	  margin-left: 50px;
	  font-size: 14px;
	}
	
	.search-box {
	  width: 250px;
	  height: 36px;
	  border-radius: 20px;
	  background-color: #253863;
	  border: 1px solid #253863;
	  margin: 0;
	  margin-left: 50px;
	  margin-top: 27px;
	  width: 250px !important;
	  transition: all 1s;
	  text-align: center;
	  color: white;
	}
	
	.search-box:focus {
	  width: 400px !important;
	}
	
	.search-btn {
	  width: 70px;
	  height: 29px;
	  margin-left: -73px;
	  border-radius: 20px;
	  border: 1px solid #1b2944;
	  background-color: #1b2944;
	  margin-top: 31px;
	
	  color: white;
	}
	
	.date-color {
	  color: #a9a9a9;
	  margin-right: 5px;
	}
	
	.profile-container {
	  width: 30%;
	  height: 100px;
	  background-color: #1b2944;
	  display: flex;
	}
	
	.user-name-container h6 {
	  margin-top: 25px;
	  padding: 10px;
	  font-weight: 700;
	}
	
	.profile-button-container {
	  margin-left: 250px;
	  padding: 15px;
	}
	
	.main-container {
	  display: flex;
	  width: 100%;
	  height: 90vh;
	  background-color: #b1b6c0;
	}
	
	.sidebar-container {
	  width: 10%;
	  background-color: #1b2944;
	  display: flex;
	  flex-flow: column;
	  z-index: 7;
	  color: white;
	  border: 1px solid #1b2944;
	}
	
	.dashboard-container {
	  width: 90%;
	  background-color: #1b2944;
	  display: flex;
	  align-items: center;
	}
	
	.all-btn {
	  width: 110px;
	  height: 30px;
	  border-radius: 30px;
	  margin-top: 15px;
	
	  font-size: 12px;
	  font-weight: 700;
	}
	
	.edit-profile-btn {
	  margin-right: 10px;
	  background-color: #253863;
	  color: white;
	  border: 1px solid black;
	}
	
	.device-container i {
	  margin-right: 15px;
	}
	
	.sensor-box p {
	  padding-left: 5px;
	  margin: 0px 5px 5px 5px;
	  margin-left: 10px;
	  font-size: 15px;
	  font-weight: 600;
	}
	
	.dashboard-container-half1 {
	  width: 60%;
	  height: 96%;
	  background-color: #1b2944;
	  display: flex;
	  flex-flow: column;
	  margin-left: 20px;
	}
	
	.small {
	  font-size: 12px;
	  font-weight: lighter;
	}
	
	.dashboard-container-half2 {
	  width: 36%;
	  height: 96%;
	  background-color: #1b2944;
	  display: flex;
	  flex-flow: column;
	}
	
	.dashboard-container-half1-smartsensors-container {
	  width: 95%;
	  height: 41%;
	  background-color: #1b2944;
	  margin: auto;
	  color: white;
	  display: flex;
	  flex-flow: column;
	  margin-top: 0px;
	}
	
	.dashboard-container-half1-animation-container {
	  width: 95%;
	  height: 49%;
	  background-color: #1b2944;
	  margin: auto;
	  color: white;
	}
	
	.dashboard-container-half1-footer-container {
	  width: 95%;
	  height: 5%;
	  background-color: #1b2944;
	  margin: auto;
	  display: flex;
	  color: #eee;
	}
	
	.dashboard-container-half2-highlights-container {
	  width: 100%;
	  height: 28%;
	  background-color: #1b2944;
	  border: 2px solid #1b2944;
	  border-radius: 10px;
	  margin-top: 10px;
	  display: flex;
	
	  flex-flow: column;
	}
	
	.dashboard-container-half1-smartsensor-title {
	  width: 100%;
	  background-color: firebrick;
	}
	
	.dashboard-container-half1-smartsensors-container-sub-container {
	  width: 100%;
	  height: 100%;
	  background-color: #1b2944;
	  display: flex;
	  justify-content: space-between;
	  margin-top: 5px;
	}
	
	.dashboard-container-half1-smartsensors-container-box {
	  width: 23.5%;
	  height: 285px;
	  background-color: #253863;
	  border: 1px solid #253863;
	  border-radius: 10px;
	}
	
	.showBox {
	  display: none;
	}
	
	.dashboard-container-half2-information-conatainer-temperature-container h6 {
	  margin: 0;
	  margin-top: 10px;
	  margin-left: 15px;
	}
	
	.dashboard-container-half2-information-conatainer-fire-container h6 {
	  margin: 0;
	  margin-top: 10px;
	  margin-left: 15px;
	}
	
	.dashboard-container-half2-information-conatainer-production-box h6 {
	  margin-top: 15px;
	}
	
	.dashboard-container-half2-information-conatainer-quality-box h6 {
	  margin-top: 15px;
	}
	
	.sensor-hide-subpage {
	  width: 1730px;
	  height: 86%;
	  background-color: #253863;
	  position: fixed;
	  right: 0%;
	  z-index: 6;
	  transition: transform 1s;
	  transform: translateX(1730px);
	  border: 1px solid black;
	  margin-top: 16px;
	  border-top-left-radius: 10px;
	  border-bottom-left-radius: 10px;
	  display: flex;
	  flex-flow: column;
	  color: white;
	}
	
	.showcss {
	  transition: transform 1.5s;
	  transform: translateX(0px);
	}
	
	.highlights-title-box {
	  width: 100%;
	  height: 23%;
	  background-color: #0c172b;
	  border-top-left-radius: 10px;
	  border-top-right-radius: 10px;
	  color: white;
	}
	
	.highlights-title-box h4 {
	  margin-left: 16px;
	  padding-top: 10px;
	  font-weight: 700;
	}
	
	.critical-box p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	
	.critical-box-2 p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	
	.critical-box-3 p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	.critical-box-4 p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	.critical-time-box p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	
	.critical-value-box p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	
	.critical-change-box p {
	  text-align: center;
	  margin: 0;
	  margin-top: 11px;
	  font-size: 13px;
	}
	
	.production-input-box {
	  width: 100%;
	  height: 50%;
	  margin-top: 25px;
	  background-color: #1b2944;
	}
	
	.speed-input-box {
	  width: 100%;
	  height: 50%;
	  margin-top: 25px;
	}
	
	.sensor-hide-subpage-sensor1-container {
	  width: 100%;
	  height: 48%;
	}
	
	.sensor-hide-subpage-sensor2-container {
	  width: 100%;
	  height: 48%;
	
	  border-radius: 10px;
	}
	
	.sensor-hide-subpage-title-container {
	  width: 100%;
	  background-color: #253863;
	  display: flex;
	  margin-bottom: 0px;
	}
	.sensor-hide-subpage-title-container p {
	  margin-left: 35px;
	  margin-top: 40px;
	  margin-bottom: 0px;
	  font-size: 25px;
	}
	.sensor-hide-subpage-title-container i {
	  font-size: 30px;
	  position: fixed;
	  left: 96%;
	  top: 2.5%;
	}
	
	.sensor-hide-subpage-title-container h4 {
	  margin: 0;
	  margin-top: 80px;
	  margin-left: 35px;
	  color: white;
	}
	
	.sensor-hide-subpage-sensor1-chart-box {
	  width: 1000px;
	  height: 310px;
	  margin-top: 15px;
	  border: 1px solid #0c172b;
	  border-radius: 10px;
	  background-color: #0c172b;
	  display: flex;
	}
	
	.footer-details-container p {
	  margin: 0;
	  margin-top: 5px;
	  line-height: 12px;
	  font-size: 12px;
	  font-family: sans-serif;
	  font-weight: 700;
	}
	
	.footer-ivh-container h4 {
	  font-size: 32px;
	  margin-right: 15px;
	  font-style: italic;
	  font-weight: 700;
	}
	
	.footer-ivh-container {
	  width: 7%;
	  height: 100%;
	  color: gray;
	}
	
	.footer-details-container {
	  height: 100%;
	  color: gray;
	}
	
	.machine-video {
	  width: 100%;
	  height: 90%;
	  object-fit: cover;
	  border-radius: 10px;
	}
	
	.black-background {
	  width: 100%;
	  height: 100%;
	  background-color: rgba(0, 0, 0, 0.5);
	  position: fixed;
	  right: 0%;
	  z-index: 5;
	  border: 1px solid black;
	  border-top-left-radius: 10px;
	  border-bottom-left-radius: 10px;
	  display: none;
	  flex-flow: column;
	}
	
	.sensor-hide-subpage-big-container {
	  width: 100%;
	  display: flex;
	  background-color: #253863;
	}
	
	.sensor-hide-subpage-small-container-1 {
	  width: 40%;
	  height: 100%;
	}
	
	.sensor-hide-subpage-small-container-2 {
	  width: 60%;
	  height: 100%;
	
	  display: flex;
	  flex-flow: column;
	}
	
	.sensor-hide-subpage-small-container-1-box {
	  width: 90%;
	  height: 90%;
	  background-color: #0c172b;
	  margin: auto;
	  margin-top: 15px;
	  border-radius: 10px;
	}
	
	.sensor-hide-subpage-small-container-1-box img {
	  width: 100%;
	  height: 100%;
	}
	
	.login-out-btn {
	  background-color: #253863;
	  color: white;
	  border: 1px solid black;
	}
	
	.profile-photo-container {
	  width: 100%;
	  height: 200px;
	  color: white;
	}
	
	.profile-photo-container p {
	  text-align: center;
	  margin-top: 15px;
	}
	
	.profile-photo-container img {
	  width: 100px;
	  display: block;
	  height: 100px;
	  border-radius: 50px;
	  margin: auto;
	  margin-top: 80px;
	
	  border: 1px solid #eee;
	}
	
	margin:auto .sidebar-buttons {
	  width: 100%;
	  height: 150px;
	  display: flex;
	  flex-flow: column;
	}
	
	.btn-custom {
	  display: block;
	  width: 130px;
	  margin: auto;
	  height: 35px;
	  border: 1px solid #1b2944;
	  background-color: #1b2944;
	  border-radius: 8px;
	  color: white;
	  margin-bottom: 8px;
	}
	
	.btn-contact {
	  display: block;
	  width: 130px;
	  margin: auto;
	  height: 35px;
	  border: 1px solid #1b2944;
	  background-color: #1b2944;
	  border-radius: 8px;
	  color: white;
	}
	
	.sidebar-btn-1:hover {
	  border: 1px solid #ffffff;
	}
	
	.sidebar-btn-2:hover {
	  border: 1px solid #ffffff;
	}
	
	.sidebar-btn-click {
	  border: 1px solid #ffffff;
	}
	
	.dashboard-container-half2-information-container-title-container {
	  width: 100%;
	  background-color: #1b2944;
	  color: white;
	}
	
	.dashboard-container-half2-information-container {
	  width: 100%;
	  height: 64.5%;
	
	  display: flex;
	  flex-flow: column;
	}
	
	.dashboard-container-half2-quality-speed-container {
	  width: 100%;
	  background-color: #1b2944;
	  display: flex;
	  justify-content: space-between;
	  margin-top: 5px;
	}
	
	.dashboard-container-half2-quality-box {
	  width: 49%;
	  height: 285px;
	  background-color: #0c172b;
	  border-radius: 10px;
	  color: white;
	  display: flex;
	  flex-flow: column;
	  z-index: 0;
	  margin-top: 5px;
	}
	
	.dashboard-container-half2-speed-box {
	  width: 49%;
	  height: 285px;
	  background-color: #0c172b;
	  border-radius: 10px;
	  margin-top: 5px;
	  color: white;
	}
	
	.dashboard-container-half2-status-container {
	  width: 100%;
	  background-color: #1b2944;
	  display: flex;
	  justify-content: space-between;
	}
	
	.dashboard-container-half2-temperature-box {
	  width: 49%;
	  height: 95px;
	  margin-top: 10px;
	  background-color: #253863;
	  border-radius: 10px;
	  color: white;
	  display: flex;
	  flex-flow: column;
	}
	
	.dashboard-container-half2-humidity-box {
	  width: 49%;
	  height: 95px;
	  margin-top: 10px;
	  background-color: #253863;
	  border-radius: 10px;
	  color: white;
	  display: flex;
	  flex-flow: column;
	}
	
	.dashboard-container-half2-fire-box {
	  width: 49%;
	  height: 95px;
	  margin-top: 10px;
	  background-color: #253863;
	  border-radius: 10px;
	  color: white;
	  display: flex;
	  flex-flow: column;
	}
	
	.dashboard-container-half2-electricity-box {
	  width: 49%;
	  height: 95px;
	  margin-top: 10px;
	  background-color: #253863;
	  border-radius: 10px;
	  color: white;
	}
	
	.alert-time-value-change-container {
	  width: 100%;
	  background-color: #253863;
	  display: flex;
	}
	
	.alert-time-value-change-container .alert-box {
	  width: 47%;
	  height: 35px;
	  color: white;
	  text-align: center;
	}
	
	.alert-box p {
	  margin: 0;
	  margin-top: 5px;
	}
	
	.time-box {
	  width: 16%;
	  height: 35px;
	  color: white;
	  text-align: center;
	}
	
	.time-box p {
	  margin: 0;
	  margin-top: 5px;
	}
	
	.value-box {
	  width: 16%;
	  height: 35px;
	  color: white;
	  text-align: center;
	}
	
	.value-box p {
	  margin: 0;
	  margin-top: 5px;
	}
	
	.change-box {
	  width: 16%;
	  height: 35px;
	  color: white;
	  text-align: center;
	}
	
	.change-box p {
	  margin: 0;
	  margin-top: 5px;
	}
	
	.critical-hightemperature-container {
	  width: 100%;
	  height: 100%;
	  background-color: #253863;
	  overflow-y: scroll;
	  border-bottom-right-radius: 10px;
	  border-bottom-left-radius: 10px;
	}
	
	.critical-box-2 {
	  width: 95%;
	  background-color: #1b2944;
	  height: 41px;
	  margin: auto;
	  margin-bottom: 4px;
	  margin-top: 5px;
	  display: flex;
	  color: white;
	  font-weight: 400;
	}
	
	.critical-box-3 {
	  width: 95%;
	  background-color: #1b2944;
	  height: 41px;
	  margin: auto;
	  margin-bottom: 4px;
	  margin-top: 5px;
	  display: flex;
	  color: white;
	  font-weight: 400;
	}
	
	.critical-box {
	  width: 95%;
	  background-color: #1b2944;
	  height: 41px;
	  margin: auto;
	  margin-bottom: 4px;
	  margin-top: 12px;
	  display: flex;
	  color: white;
	  font-weight: 400;
	}
	.critical-box span {
	  margin: auto;
	}
	.critical-box-2 span {
	  margin: auto;
	}
	.critical-box-3 span {
	  margin: auto;
	}
	.critical-box-4 span {
	  margin: auto;
	}
	
	.critical-box-4 {
	  width: 95%;
	  background-color: #1b2944;
	  height: 41px;
	  margin: auto;
	  margin-bottom: 4px;
	  margin-top: 5px;
	  display: flex;
	  color: white;
	  font-weight: 400;
	}
	
	.circle-container-1 {
	  position: relative;
	  margin: auto;
	}
	.circle-container-1 h3 {
	  position: absolute;
	  left: 50%;
	  top: 65%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	  font-size: 18px;
	}
	.circle-container-2 h3 {
	  position: absolute;
	  left: 50%;
	  top: 65%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	  font-size: 18px;
	}
	
	.circle-container-1 h2 {
	  position: absolute;
	  left: 50%;
	  top: 50%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	}
	.circle-container-2 h2 {
	  position: absolute;
	  left: 50%;
	  top: 50%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	}
	.circle-container-1 svg {
	  width: 220px;
	  height: 220px;
	}
	.circle-container-2 svg {
	  width: 220px;
	  height: 220px;
	}
	
	.outterCircle_1 {
	  fill: #1b2944;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	}
	
	.innerCircle_1 {
	  fill: #253863;
	  stroke-width: 9;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 576;
	  animation: line_1 2s forwards;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	}
	
	@keyframes line_1 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 0;
	  }
	}
	
	.circle-container-3 {
	  position: relative;
	  margin: auto;
	}
	.circle-container-3 h3 {
	  position: absolute;
	  left: 50%;
	  top: 65%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	  font-size: 18px;
	}
	
	.circle-container-3 h2 {
	  position: absolute;
	  left: 50%;
	  top: 50%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	}
	
	.circle-container-3 svg {
	  width: 220px;
	  height: 220px;
	}
	
	.outterCircle_3 {
	  fill: #1b2944;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	}
	
	.innerCircle_3 {
	  fill: #253863;
	  stroke-width: 9;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 576;
	  animation: line_3 2s forwards;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	}
	
	@keyframes line_3 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 0;
	  }
	}
	
	.circle-container-4 {
	  position: relative;
	  margin: auto;
	}
	.circle-container-4 h3 {
	  position: absolute;
	  left: 50%;
	  top: 65%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	  font-size: 18px;
	}
	
	.circle-container-4 h2 {
	  position: absolute;
	  left: 50%;
	  top: 50%;
	  transform: translate(-50%, -50%);
	  margin: auto;
	}
	
	.circle-container-4 svg {
	  width: 220px;
	  height: 220px;
	}
	
	.outterCircle_4 {
	  fill: #1b2944;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	}
	
	.innerCircle_4 {
	  fill: #253863;
	  stroke-width: 9;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 576;
	  animation: line_4 2s forwards;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	}
	
	@keyframes line_4 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 0;
	  }
	}
	
	.refresh_2 {
	  margin-left: 420px;
	  font-size: 15px;
	}
	
	.refresh_2:hover {
	  cursor: pointer;
	}
	.refresh {
	  margin-left: 740px;
	  font-size: 15px;
	}
	.refresh:hover {
	  cursor: pointer;
	}
	
	.device-icon-1 {
	  margin-left: 75px;
	  font-size: 20px;
	}
	
	.temperature-box {
	  width: 100%;
	  display: flex;
	}
	
	.temperature-box h5 {
	  margin-top: 14px;
	  font-size: 20px;
	}
	
	.icon-box-1 {
	  width: 25px;
	  height: 25px;
	  border: 2px solid #eee;
	  margin-top: 15px;
	  margin-left: 15px;
	  margin-right: 7px;
	  font-size: 15px;
	  text-align: center;
	  border-radius: 5px;
	}
	
	.icon_1:hover {
	  cursor: pointer;
	}
	
	.temperature-box-2 {
	  font-size: 40px;
	  margin-top: -10px;
	  margin-left: 15px;
	  color: #ffc751;
	}
	
	.humidity-box {
	  width: 100%;
	  display: flex;
	}
	
	.humidity-box h5 {
	  margin-top: 14px;
	  font-size: 20px;
	}
	
	.humidity-box-2 {
	  font-size: 40px;
	  margin-top: -10px;
	  margin-left: 15px;
	  color: #ffc751;
	}
	
	.circle-container-2 {
	  position: relative;
	  margin: auto;
	}
	
	.outterCircle_2 {
	  fill: #1b2944;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	}
	
	.innerCircle_2 {
	  fill: #253863;
	  stroke-width: 9;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 576;
	  animation: line_2 2s forwards;
	  transform: rotate(-180deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	}
	
	@keyframes line_2 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 0;
	  }
	}
	
	.device-icon-2 {
	  margin-left: 75px;
	  font-size: 20px;
	}
	
	.sensor-hide-subpage-sensor2-chart-box {
	  width: 1000px;
	  height: 310px;
	  border: 1px solid #0c172b;
	  border-radius: 10px;
	  background-color: #0c172b;
	  margin-top: 3px;
	  display: flex;
	}
	
	.gauge-container-1 {
	  position: relative;
	  width: 100%;
	  height: 250px;
	}
	
	.gauge {
	  fill: rgba(0, 0, 0, 0);
	  stroke-width: 15;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 150;
	  animation: line_5 2s forwards;
	  transform: rotate(-215deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	  position: absolute;
	  z-index: 4;
	}
	
	@keyframes line_5 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 162;
	  }
	}
	
	.myCanvasGauge {
	  position: absolute;
	  z-index: -1;
	}
	
	.gauge-svg {
	  width: 300px;
	  height: 250px;
	}
	
	.fire-box {
	  width: 100%;
	  display: flex;
	}
	.fire-box h5 {
	  margin-top: 14px;
	  font-size: 19px;
	}
	
	.fire-box-2 {
	  font-size: 40px;
	  margin-top: -10px;
	  margin-left: 15px;
	  color: #ffc751;
	}
	
	.electricity-box {
	  width: 100%;
	  display: flex;
	}
	.electricity-box h5 {
	  margin-top: 14px;
	  font-size: 20px;
	}
	
	.electricity-box-2 {
	  font-size: 40px;
	  margin-top: -10px;
	  margin-left: 15px;
	  color: #ffc751;
	}
	
	::-webkit-scrollbar {
	  width: 10px;
	  height: 10px;
	  background: #253863;
	}
	::-webkit-scrollbar-track {
	  border: 1px gray solid;
	  border-radius: 10px;
	  /* -webkit-box-shadow: 0 0 6px black inset; */
	}
	::-webkit-scrollbar-thumb {
	  background: #253863;
	  border-radius: 10px;
	  border: 1px solid #fff;
	}
	.current-quality {
	  position: absolute;
	  top: 75%;
	  left: 42%;
	}
	
	.quality-percent {
	  position: absolute;
	  top: 75%;
	  left: 55%;
	}
	
	.device-icon-3 {
	  margin-left: 75px;
	  font-size: 20px;
	}
	
	.device-icon-4 {
	  margin-left: 75px;
	  font-size: 20px;
	}
	
	.camera-hide-subpage {
	  width: 1730px;
	  height: 86%;
	  background-color: #253863;
	  position: fixed;
	  right: 0%;
	  z-index: 5;
	  /*
	    transition: transform 1s;
	    transform: translateX(1730px);
	*/
	  border: 1px solid black;
	  margin-top: 16px;
	  border-top-left-radius: 10px;
	  border-bottom-left-radius: 10px;
	  display: flex;
	  flex-flow: column;
	  color: white;
	  opacity: 0;
	}
	
	.showcss2 {
	  opacity: 1;
	}
	
	.camera-hide-subpage-title-container {
	  width: 100%;
	  background-color: #253863;
	  display: flex;
	  margin-bottom: 0px;
	}
	
	.camera-hide-subpage-big-container {
	  width: 100%;
	  display: flex;
	  background-color: #253863;
	}
	
	.camera-hide-subpage-small-container-1 {
	  width: 40%;
	  height: 100%;
	}
	
	.camera-hide-subpage-small-container-1-box {
	  width: 90%;
	  height: 90%;
	  background-color: #0c172b;
	  margin: auto;
	  margin-top: 15px;
	  border-radius: 10px;
	}
	
	.camera-hide-subpage-small-container-2 {
	  width: 60%;
	  height: 100%;
	
	  display: flex;
	  flex-flow: column;
	}
	
	.camera-hide-subpage-sensor1-container {
	  width: 100%;
	  height: 50%;
	}
	
	.camera-hide-subpage-sensor1-chart-box {
	  width: 1000px;
	  height: 300px;
	  margin-top: 15px;
	  border: 1px solid #0c172b;
	  border-radius: 10px;
	  background-color: #0c172b;
	}
	
	.camera-hide-subpage-sensor2-container {
	  width: 100%;
	  height: 50%;
	
	  border-radius: 10px;
	}
	
	.camera-hide-subpage-sensor2-chart-box {
	  width: 1000px;
	  height: 300px;
	  border: 1px solid #0c172b;
	  border-radius: 10px;
	  background-color: #0c172b;
	}
	
	.camera-hide-subpage-small-container-1-box img {
	  width: 100%;
	  height: 90%;
	}
	
	.camera-hide-subpage-title-container i {
	  font-size: 30px;
	  position: fixed;
	  left: 96%;
	  top: 15.5%;
	}
	.camera-hide-subpage-title-container p {
	  margin-left: 35px;
	  margin-top: 40px;
	  margin-bottom: 0px;
	  font-size: 25px;
	}
	
	.icon_2:hover {
	  cursor: pointer;
	}
	
	.alert-color-box_1 {
	  width: 15px;
	  height: 100%;
	  background-color: white;
	}
	
	.alert-color-box_2 {
	  width: 15px;
	  height: 100%;
	  background-color: white;
	}
	
	.alert-color-box_3 {
	  width: 15px;
	  height: 100%;
	  background-color: white;
	}
	
	.alert-color-box_4 {
	  width: 15px;
	  height: 100%;
	  background-color: white;
	}
	
	.critical-box-change-data {
	  width: 6.5%;
	}
	
	.critical-box-change-data-2 {
	  width: 6.5%;
	}
	
	.critical-box-change-data-3 {
	  width: 6.5%;
	}
	
	.critical-box-change-data-4 {
	  width: 6.5%;
	}
	
	.chart-container {
	  width: 600px;
	  height: 250px;
	  background-color: #0c172b;
	  border-left: 2px solid #253863;
	  border-bottom: 2px solid #253863;
	  margin-top: 50px;
	  margin-left: 20px;
	}
	
	.table-container {
	  background-color: #0c172b;
	  width: 350px;
	  border-radius: 5px;
	  display: flex;
	  flex-flow: column;
	  margin-left: 30px;
	}
	
	.table-container-buttons {
	  width: 70%;
	  display: flex;
	  justify-content: space-between;
	  margin-top: 30px;
	}
	
	.table-btn {
	  width: 70px;
	  background-color: #253863;
	  color: white;
	  border-radius: 20px;
	  height: 35px;
	  font-weight: 600;
	  border: 1px solid #253863;
	}
	
	.gauge-container-2 {
	  position: relative;
	  width: 300px;
	  height: 250px;
	  z-index: 1;
	}
	
	.myCanvasGauge2 {
	  position: absolute;
	  z-index: -1;
	  width: 100%;
	}
	
	.gauge-svg2 {
	  width: 300px;
	  height: 250px;
	}
	
	.gauge2 {
	  fill: rgba(0, 0, 0, 0);
	  stroke-width: 15;
	  stroke: #eee;
	  stroke-dasharray: 576;
	  stroke-dashoffset: 190;
	  animation: line_6 2s forwards;
	  transform: rotate(-215deg);
	  transform-origin: 52% 52%;
	  stroke-linecap: round;
	  position: absolute;
	}
	
	@keyframes line_6 {
	  from {
	    stroke-dashoffset: 576;
	  }
	  to {
	    stroke-dashoffset: 162;
	  }
	}
	
	.current-quality2 {
	  position: absolute;
	  top: 75%;
	  left: 42%;
	}

</style>
<body>
    
    <div class="navbar-container">                                
        <!--top navbar -->
        <div class="logo-container">
            <a href="main.jsp"><img src="https://i.imgur.com/gS37Yzi.png" title="source: imgur.com" /></a>
        </div>
        <div class="search-date-container">
            <input class="search-box" type="text" placeholder="SEARCH">
            <button class="search-btn"><i class="fas fa-search"></i></button>
            <p style="font-weight: 600"><span class="date-color">START</span> JULY.29.2021</p>
            <p style="font-weight: 600"><span class="date-color">END</span> JULY.29.2021</p>
        </div>
        <div class="profile-container">
            <div class="profile-button-container">
                <button class="all-btn edit-profile-btn"><a href="myPage.me">EDIT PROFILE</a></button>
                <button class="all-btn login-out-btn"><a href="logout.me">LOGOUT</a></button>
            </div>
        </div>
    </div>
    
    <div class="main-container">                                  
        <!--main container-->
        <div class="sidebar-container">                           
            <!--side bar (inside of main container) -->
            <div style="height: 90%; border-right: 3px solid #243964; margin-top: 50px;">                    
                <div class="profile-photo-container">
                    <div class="profile-box"><img src="https://i.imgur.com/pO4OGIl.jpg" class="rounded-circle" id="preview"></div> 
	                    <input type="hidden" name="memberName">
	                    <p>${ loginUser.memberName }님</p>
                	</div>
                <div class="sidebar-buttons">
                    <button class="btn-custom sidebar-btn-1">Custom View</button>
                    <button class="btn-contact sidebar-btn-2">Contact Us</button>
                </div>
            </div>
        </div>
        <div class="dashboard-container">
            <div class="dashboard-container-half1">
                <div class="dashboard-container-half1-smartsensors-container">
                    <h4 class="btnsm">HEALTH MONITOR <span class="refresh"><i class="fas fa-redo"></i></span></h4>
                    <div class="dashboard-container-half1-smartsensors-container-sub-container">
                        <div class="dashboard-container-half1-smartsensors-container-box">
                            <h4 style="margin: 5px 0px 0px 15px;">DEVICE 1 <span class="device-icon-1"><i class="fas fa-exclamation-circle"></i></span></h4>
                            <div class="circle-container-1">
								<input type="hidden" id="sensorNo" name="sensorNo" value="${ UsedSensor.sensorNo }">
                            	<input type="hidden" id="time" name="time" value="${ UsedSensor.time }">
                            	<input type="hidden" id="loadcell1" name="loadcell1" value="${ UsedSensor.loadcell1 }" >
                            	<input type="hidden" id="loadcell2" name="loadcell2" value="${ UsedSensor.loadcell2 }" >
                            	<input type="hidden" id="loadcell3" name="loadcell3" value="${ UsedSensor.loadcell3 }" >
                            	<input type="hidden" id="loadcell4" name="loadcell4" value="${ UsedSensor.loadcell4 }" >
                            	<input type="hidden" id="loadcell5" name="loadcell5" value="${ UsedSensor.loadcell5 }" >
                                <h2 class="circle-data_1"> </h2>
                                <h3 class="device-status-1">status</h3>
                                <svg>
                                    <circle class="outterCircle_1" cx="115" cy="115" r="95"></circle>
                                    <circle class="innerCircle_1" cx="115" cy="115" r="92"></circle>
                                </svg>
                            </div>
                            <span style="font-size: 12px; margin-left: 165px">(단위/M)</span>
                        </div>
                        <div class="dashboard-container-half1-smartsensors-container-box">
                            <h4 style="margin: 5px 0px 0px 15px;">DEVICE 2 <span class="device-icon-2"><i class="fas fa-exclamation-circle"></i></span></h4>
                            <div class="circle-container-2">
                                <h2 class="circle-data_2"> </h2>
                                <h3 class="device-status-2">status</h3>
                                <svg>
                                    <circle class="outterCircle_2" cx="115" cy="115" r="95"></circle>
                                    <circle class="innerCircle_2" cx="115" cy="115" r="92"></circle>
                                </svg>
                            </div>
                            <span style="font-size: 12px; margin-left: 165px">(단위/M)</span>
                        </div>
                        <div class="dashboard-container-half1-smartsensors-container-box">
                            <h4 style="margin: 5px 0px 0px 15px;">DEVICE 3 <span class="device-icon-3"><i class="fas fa-exclamation-circle"></i></span></h4>
                            <div class="circle-container-3">
                                <h2 class="circle-data_3"> </h2>
                                <h3 class="device-status-3">status</h3>
                                <svg>
                                    <circle class="outterCircle_3" cx="115" cy="115" r="95"></circle>
                                    <circle class="innerCircle_3" cx="115" cy="115" r="92"></circle>
                                </svg>
                            </div>
                            <span style="font-size: 12px; margin-left: 165px">(단위/M)</span>
                        </div>
                        <div class="dashboard-container-half1-smartsensors-container-box">
                            <h4 style="margin: 5px 0px 0px 15px;">DEVICE 4 <span class="device-icon-4"><i class="fas fa-exclamation-circle"></i></span></h4>
                            <div class="circle-container-4">
                                <h2 class="circle-data_4"> </h2>
                                <h3 class="device-status-4">status</h3>
                                <svg>
                                    <circle class="outterCircle_4" cx="115" cy="115" r="95"></circle>
                                    <circle class="innerCircle_4" cx="115" cy="115" r="92"></circle>
                                </svg>
                            </div>
                            <span style="font-size: 12px; margin-left: 165px">(단위/M)</span>
                        </div>
                    </div>
                </div>
                <div class="dashboard-container-half1-animation-container">
                    <h4>Smart Dashboard</h4>

                    <video id="vid" class="machine-video" autoplay="autoplay" muted="muted">
                        <source src="resources/video/machine.mp4" type="video/mp4">
                    </video>
                </div>
                <div class="dashboard-container-half1-footer-container">
                    <div class="footer-ivh-container">
                        <h4>iVH</h4>
                    </div>
                    <div class="footer-details-container">
                        <p>558, 3F, NAIS B/D, Saimdang-ro, Seocho-gu, Seoul, Republic of Korea</p>
                        <p>ivh@ivh.co.kr/ +82-2-789-8654 / MON-FRI AM 9 ~ PM 7 / SAT.SUN.HOLIDAY OFF © iVH All Rights Reserved.</p>
                    </div>
                </div>
            </div>
            <div class="dashboard-container-half2">
                <div class="dashboard-container-half2-information-container">
                    <div class="dashboard-container-half2-information-container-title-container">
                        <h4>INFORMATION <span class="refresh_2"><i class="fas fa-redo"></i></span></h4>
                    </div>
                    <div class="dashboard-container-half2-quality-speed-container" id="dashboard-container-half2-quality-speed-container">
                        <div class="dashboard-container-half2-quality-box">
                            <h5 style="margin-left: 15px; margin-top: 10px;">PRODUCTION QUALITY</h5>
                            <div class="gauge-container-1">
                                <canvas class="myCanvasGauge" id="myCanvas" height="250" width="300"></canvas>
                                <svg class="gauge-svg">
                                    <circle class="gauge" cx="166.5" cy="126" r="95"></circle>
                                </svg>
                                <span class="current-quality" style="font-size: 30px;"> </span>
                            </div>
                        </div>
                        <div class="dashboard-container-half2-speed-box">
                            <h5 style="margin-left: 15px; margin-top: 10px;">PRODUCTION SPEED</h5>
                            <div class="gauge-container-2">
                                <canvas class="myCanvasGauge2" id="myCanvas2" height="250" width="300"></canvas>
                                <svg class="gauge-svg2">
                                    <circle class="gauge2" cx="166.5" cy="126" r="95"></circle>
                                </svg>
                                <span class="current-quality2" style="font-size: 30px;"> </span>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-container-half2-status-container">
                        <div class="dashboard-container-half2-temperature-box">
                            <div class="temperature-box">
                                <div class="icon-box-1"><i class="fas fa-temperature-low"></i></div>
                                <h5>TEMPERATURE</h5>
                            </div>
	                            <div class="temperature-box-2">
			                        <span class="temperature-data" style="font-weight: 600">25</span><span style="font-size: 20px;">℃</span>
	                            </div>
                        </div>
                        <div class="dashboard-container-half2-humidity-box">
                            <div class="humidity-box">
                                <div class="icon-box-1"><i class="fas fa-tint"></i></div>
                                <h5>HUMIDITY
                                </h5>
                            </div>
                            <div class="humidity-box-2">
                                <span class="humidiy-data" style="font-weight: 600">11</span><span style="font-size: 20px;">%</span>
                            </div>
                        </div>
                    </div>
                    <div class="dashboard-container-half2-status-container">
                        <div class="dashboard-container-half2-fire-box">
                            <div class="fire-box">
                                <div class="icon-box-1"><i class="fab fa-intercom"></i></div>
                                <h5>FINE PARTICULATER MATTER
                                </h5>
                            </div>
                            <div class="fire-box-2">
                                <span class="particular-data" style="font-weight: 600">3</span> <span style="font-size: 20px;">㎍/m³</span>
                            </div>
                        </div>
                        <div class="dashboard-container-half2-electricity-box">
                            <div class="electricity-box">
                                <div class="icon-box-1"><i class="fas fa-bolt"></i></div>
                                <h5>ELECTRICITY USAGE
                                </h5>
                            </div>
                            <div class="electricity-box-2">
                                <span class="electricity-data" style="font-weight: 600">2</span> <span style="font-size: 20px;">kWh</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="dashboard-container-half2-highlights-container">
                    <div class="highlights-title-box">
                        <h4>HIGHLIGHTS</h4>
                    </div>
                    <div class="alert-time-value-change-container">
                        <div class="alert-box">
                            <p>ALERT</p>
                        </div>
                        <div class="time-box">
                            <p>TIME</p>
                        </div>
                        <div class="value-box">
                            <p>VALUE</p>
                        </div>
                        <div class="change-box">
                            <p>CHANGE</p>
                        </div>
                    </div>
                    <div class="critical-hightemperature-container">
                        <div class="critical-box">
                            <div class="alert-color-box_1"></div>
                            <span style="margin-left: 10px">CRITICAL-HIGH TEMPERATURE</span>
                            <span style="margin-left: 20px">3d,21h</span>
                            <span class="critical-box-value-data" style="margin-left: 28px">100</span>
                            <span class="critical-box-change-data">0%</span>
                        </div>
                        <div class="critical-box-2">
                            <div class="alert-color-box_2"></div>
                            <span style="margin-left: 10px">CRITICAL-HIGH TEMPERATURE</span>
                            <span style="margin-left: 20px">3d,21h</span>
                            <span class="critical-box-value-data" style="margin-left: 28px">100</span>
                            <span class="critical-box-change-data-2">0%</span>
                        </div>
                        <div class="critical-box-3">
                            <div class="alert-color-box_3"></div>
                            <span style="margin-left: 10px">CRITICAL-HIGH TEMPERATURE</span>
                            <span style="margin-left: 20px">3d,21h</span>
                            <span class="critical-box-value-data" style="margin-left: 28px">100</span>
                            <span class="critical-box-change-data-3">0%</span>
                        </div>
                        <div class="critical-box-4">
                            <div class="alert-color-box_4"></div>
                            <span style="margin-left: 10px">CRITICAL-HIGH TEMPERATURE</span>
                            <span style="margin-left: 20px">3d,21h</span>
                            <span class="critical-box-value-data" style="margin-left: 28px">100</span>
                            <span class="critical-box-change-data-4">0%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="black-background">
            <div class="sensor-hide-subpage">
                <div class="sensor-hide-subpage-title-container">
                    <p>DETAIL SENSOR</p><i class="fas fa-times icon_1"></i>
                </div>
                <div class="sensor-hide-subpage-big-container">
                    <div class="sensor-hide-subpage-small-container-1">
                        <div class="sensor-hide-subpage-small-container-1-box">
                            <img style="border-radius: 10px;" src="resources/images/img-11.jpg" alt="#">
                        </div>
                    </div>
                    <div class="sensor-hide-subpage-small-container-2">
                        <div class="sensor-hide-subpage-sensor1-container">
                            <div class="sensor-hide-subpage-sensor1-chart-box">
                                <div class="chart-container">
                                    <canvas id="myChart"></canvas>
                                </div>
                                <div class="table-container">
                                    <div class="table-container-buttons">
                                        <button class="table-btn btn-table1">S 1</button>
                                        <button class="table-btn btn-table2">S 2</button>
                                        <button class="table-btn btn-table3">S 3</button>

                                    </div>
                                    <div class="table-box">

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sensor-hide-subpage-sensor2-container">
                            <div class="sensor-hide-subpage-sensor2-chart-box">
                               <div class="chart-container">
                                <canvas id="myChart2"></canvas>
                                </div>
                                 <div class="table-container">
                                    <div class="table-container-buttons">
                                        <button class="table-btn btn-table4">S 1</button>
                                        <button class="table-btn btn-table5">S 2</button>
                                        <button class="table-btn btn-table6">S 3</button>

                                    </div>
                                    <div class="table-box">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="camera-hide-subpage">
                <div class="camera-hide-subpage-title-container">
                    <p>CAMERA SENSOR</p><i class="fas fa-times icon_2"></i>
                </div>
                <div class="camera-hide-subpage-big-container">
                    <div class="camera-hide-subpage-small-container-1">
                        <div class="camera-hide-subpage-small-container-1-box">
                            <img style="border-radius: 10px;" src="resources/images/img-11.jpg" alt="#">
                        </div>
                    </div>
                    <div class="camera-hide-subpage-small-container-2">
                        <div class="camera-hide-subpage-sensor1-container">
                            <div class="camera-hide-subpage-sensor1-chart-box">

                            </div>
                        </div>
                        <div class="camera-hide-subpage-sensor2-container">
                            <div class="camera-hide-subpage-sensor2-chart-box">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src='http://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    
    
    <script>
		document.getElementById('vid').play();
    
	    $('.btn-custom').click(function () {
	        if ($('.btn-custom').hasClass("sidebar-btn-click")) {
	            $('.btn-custom').removeClass('sidebar-btn-click');
	        } else {
	            $('.btn-custom').addClass('sidebar-btn-click');
	        }
	
	    })
	
	    $('.btn-contact').click(function () {
	        if ($('.btn-contact').hasClass("sidebar-btn-click")) {
	            $('.btn-contact').removeClass('sidebar-btn-click');
	        } else {
	            $('.btn-contact').addClass('sidebar-btn-click');
	        }
	
	    })
	
	    $('.dashboard-container-half1-smartsensors-container-box').click(function () {
	        $('.black-background').fadeIn();
	        if ($('.sensor-hide-subpage').hasClass("showcss")) {
	            $('.sensor-hide-subpage').removeClass('showcss');
	        } else {
	            $('.sensor-hide-subpage').addClass('showcss');
	        }
	    })
	
	    $('.icon_1').click(function () {
	        $('.black-background').fadeOut();
	        if ($('.sensor-hide-subpage').hasClass("showcss")) {
	            $('.sensor-hide-subpage').removeClass('showcss');
	        } else {
	            $('.sensor-hide-subpage').addClass('showcss');
	        }
	    })
	
	    $('.dashboard-container-half2-quality-box').click(function () {
	        $('.black-background').fadeIn();
	
	        if ($('.camera-hide-subpage').hasClass("showcss2")) {
	            $('.camera-hide-subpage').removeClass('showcss2');
	        } else {
	            $('.camera-hide-subpage').addClass('showcss2');
	        }
	
	    })
	    
	    $('.icon_2').click(function () {
	        $('.black-background').fadeOut();
	        if ($('.camera-hide-subpage').hasClass("showcss2")) {
	            $('.camera-hide-subpage').removeClass('showcss2');
	        } else {
	            $('.camera-hide-subpage').addClass('showcss2');
	        }
	    })
	
		
	    function randNum() {
	        var a = Math.floor(Math.random() * 100);
	        return a;
	        console.log(a)
	    }
	
	    function randNum2() {
	        var a = Math.floor(Math.random() * 100);
	        return a;
	        console.log(a)
	    }
	    function randNum3() {
	        var a = Math.floor(Math.random() * 100);
	        return a;
	        console.log(a)
	    }
	    function randNum4() {
	        var a = Math.floor(Math.random() * 100);
	        return a;
	        console.log(a)
	    }
	    
        let saveResponse = {list:null, size:0};
        setInterval(()=>{
            updateData()},1000);
    
        function updateData(){
    		$.ajax({
   	    		url:"main.test",
   	    		dataType:"json",
   	    		success:function(response){
   	    			
   	    			let cnt = 0;
					saveResponse.list=response;
					saveResponse.size=response.length;
					
					if(cnt++ < saveResponse.size-1){
    					$('.circle-data_1').html(saveResponse.list[cnt].time);	
    					$('.critical-box-change-data').html(saveResponse.list[cnt].time);
    					$('.circle-data_2').html(saveResponse.list[cnt].loadcell3);
    					$('.critical-box-change-data-2').html(saveResponse.list[cnt].loadcell3);
    					$('.circle-data_3').html(saveResponse.list[cnt].loadcell4);
    					$('.critical-box-change-data-3').html(saveResponse.list[cnt].loadcell4);
    					$('.circle-data_4').html(saveResponse.list[cnt].loadcell5);
    					$('.critical-box-change-data-4').html(saveResponse.list[cnt].loadcell5);
    					
    					$('.current-quality').html(saveResponse.list[cnt].loadcell1);	
    					$('.current-quality2').html(saveResponse.list[cnt].loadcell2);
    				} else {
    					clearInterval(interval);
    				}
					
   	    		}, error:function(request, error){
   	    			console.log("ajax 통신 실패");
   	    			console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
   	    		}
   	    	});
    		
	    }
    
	    
	    $('.refresh').click(function () {
		    
	        setInterval(function () {
	        	
	        	let rand = randNum();
	            let rand2 = randNum2();
	            let rand3 = randNum3();
	            let rand4 = randNum4();
	
	            
	            if (0 < rand && rand < 50) {
	                $('.device-status-1').html('BAD');
	                $('.device-status-1').css("color", "rgb(236,65,65)");
	                $('.innerCircle_1').css("stroke", "rgb(236,65,65)");
	                $('.alert-color-box_1').css("background-color", "rgb(236,65,65)");
	            } else if (50 <= rand && rand < 75) {
	                $('.device-status-1').html('NORMAL');
	                $('.device-status-1').css("color", "rgb(248,195,81)");
	                $('.innerCircle_1').css("stroke", "rgb(248,195,81)");
	                $('.alert-color-box_1').css("background-color", "rgb(248,195,81)");
	            } else if (75 <= rand && rand <= 100) {
	                $('.device-status-1').html('GOOD');
	                $('.device-status-1').css("color", "rgb(133,217,111)");
	                $('.innerCircle_1').css("stroke", "rgb(133,217,111)");
	                $('.alert-color-box_1').css("background-color", "rgb(133,217,111)");
	            }
	            
	            if (0 < rand2 && rand2 < 50) {
	                $('.device-status-2').html('BAD')
	                $('.device-status-2').css("color", "rgb(236,65,65)")
	                $('.innerCircle_2').css("stroke", "rgb(236,65,65)")
	                $('.alert-color-box_2').css("background-color", "rgb(236,65,65)")
	            } else if (50 <= rand2 && rand2 < 75) {
	                $('.device-status-2').html('NORMAL')
	                $('.device-status-2').css("color", "rgb(248,195,81)")
	                $('.innerCircle_2').css("stroke", "rgb(248,195,81)")
	                $('.alert-color-box_2').css("background-color", "rgb(248,195,81)")
	            } else if (75 <= rand2 && rand2 <= 100) {
	                $('.device-status-2').html('GOOD')
	                $('.device-status-2').css("color", "rgb(133,217,111)")
	                $('.innerCircle_2').css("stroke", "rgb(133,217,111)")
	                $('.alert-color-box_2').css("background-color", "rgb(133,217,111)")
	            }
	            
	            if (0 < rand3 && rand3 < 50) {
	                $('.device-status-3').html('BAD')
	                $('.device-status-3').css("color", "rgb(236,65,65)")
	                $('.innerCircle_3').css("stroke", "rgb(236,65,65)")
	                $('.alert-color-box_3').css("background-color", "rgb(236,65,65)")
	            } else if (50 <= rand3 && rand3 < 75) {
	                $('.device-status-3').html('NORMAL')
	                $('.device-status-3').css("color", "rgb(248,195,81)")
	                $('.innerCircle_3').css("stroke", "rgb(248,195,81)")
	                $('.alert-color-box_3').css("background-color", "rgb(248,195,81)")
	            } else if (75 <= rand3 && rand3 <= 100) {
	                $('.device-status-3').html('GOOD')
	                $('.device-status-3').css("color", "rgb(133,217,111)")
	                $('.innerCircle_3').css("stroke", "rgb(133,217,111)")
	                $('.alert-color-box_3').css("background-color", "rgb(133,217,111)")
	            }
	            
	            if (0 < rand4 && rand4 < 50) {
	                $('.device-status-4').html('BAD')
	                $('.device-status-4').css("color", "rgb(236,65,65)")
	                $('.innerCircle_4').css("stroke", "rgb(236,65,65)")
	                $('.alert-color-box_4').css("background-color", "rgb(236,65,65)")
	            } else if (50 <= rand4 && rand4 < 75) {
	                $('.device-status-4').html('NORMAL')
	                $('.device-status-4').css("color", "rgb(248,195,81)")
	                $('.innerCircle_4').css("stroke", "rgb(248,195,81)")
	                $('.alert-color-box_4').css("background-color", "rgb(248,195,81)")
	            } else if (75 <= rand4 && rand4 <= 100) {
	                $('.device-status-4').html('GOOD')
	                $('.device-status-4').css("color", "rgb(133,217,111)")
	                $('.innerCircle_4').css("stroke", "rgb(133,217,111)")
	                $('.alert-color-box_4').css("background-color", "rgb(133,217,111)")
	            }
	            
	            $.keyframe.define([
		            		{
				                name: 'line_1',
				                from: {
				                    'stroke-dashoffset': 576
				            },
				                to: {
				                    'stroke-dashoffset': 576 - (576 * (rand / 100))
				                }
				            }, {
				                name: 'line_2',
				                from: {
				                    'stroke-dashoffset': 576
				            },
				                to: {
				                    'stroke-dashoffset': 576 - (576 * (rand2 / 100))
				                }
				            },{
				                name: 'line_3',
				                from: {
				                    'stroke-dashoffset': 576
				            },
				                to: {
				                    'stroke-dashoffset': 576 - (576 * (rand3 / 100))
				                }
				            },{
				                name: 'line_4',
				                from: {
				                    'stroke-dashoffset': 576
				            },
				                to: {
				                    'stroke-dashoffset': 576 - (576 * (rand4 / 100))
				                }
				            }
			            
	        			])
	
	         }, 1000)
	
	    })
	
	   
	    $('.refresh_2').click(function () {
	    	
	        setInterval(function () {
	
	            let rand = randNum();
	            let rand2 = randNum2();
	
	            $.keyframe.define([{
	                name: 'line_5',
	                from: {
	                    'stroke-dashoffset': 576
	                },
	                to: {
	                    'stroke-dashoffset': 576 - (414 * (rand / 100))
	                }
	            }, {
	                name: 'line_6',
	                from: {
	                    'stroke-dashoffset': 576
	                },
	                to: {
	                    'stroke-dashoffset': 576 - (414 * (rand2 / 100))
	                }
	            }])
	
	        }, 1000)
	
	    })
	    
	    
	    function draw() {
	
	        var ctx = document.getElementById('myCanvas').getContext("2d");
	        
	        //원 그리기
	
	
	        //원호 그리기
	        ctx.beginPath();
	        ctx.arc(150, 140, 95, (Math.PI / 180) * 145, (Math.PI / 180) * 35, false);
	        ctx.lineWidth = 20;
	        ctx.lineCap = 'round';
	        ctx.strokeStyle = "#253863"
	        //            ctx.globalCompositeOperation='destination-over';
	        ctx.stroke(); //테두리
	        
	        
	        var ctx2 = document.getElementById('myCanvas2').getContext("2d");
	        ctx2.beginPath();
	        ctx2.arc(150, 140, 95, (Math.PI / 180) * 145, (Math.PI / 180) * 35, false);
	        ctx2.lineWidth = 20;
	        ctx2.lineCap = 'round';
	        ctx2.strokeStyle = "#253863"
	        //            ctx.globalCompositeOperation='destination-over';
	        ctx2.stroke(); //테두리
	        
	        
	    }
	   
	   let ctx = document.getElementById('myChart').getContext('2d');
	   let myChart = new Chart(ctx, {
	       type: 'line',
	       data: {
	           labels: [ 0, 1, 2, 3, 4, 5],
	           datasets: [{
	               label: 'S 1',
	               data: [15, 5, 15, 20, 50, 25],            
	               borderColor: 'rgb(255,255,255)',
	               borderWidth: 3,
	               fill:false,
	               color:'rgb(255,255,255)',
	               lineTension: 0.5,
	               
	           }]
	       },
	       options: { maintainAspectRatio: false,
	           scales: {
	               y: {
	                   beginAtZero: true
	               }
	           }
	       }
	   });
	
	
	   let ctx2 = document.getElementById('myChart2').getContext('2d');
	   let myChart2 = new Chart(ctx2, {
	       type: 'line',
	       data: {
	           labels: [ 0, 1, 2, 3, 4, 5],
	           datasets: [{
	               label: 'S 1',
	               data: [15, 5, 15, 20, 50, 25],            
	               borderColor: 'rgba(37, 56, 99, 1)',
	               borderColor: 'rgb(255,255,255)',
	               borderWidth: 3,
	               fill:true,
	//               color: 'rgba(37, 56, 99, 1)',
	               color:'rgb(255,255,255)',
	               lineTension: 0.5,
	               
	           }]
	       },
	       options: { maintainAspectRatio: false,
	           scales: {
	               y: {
	                   beginAtZero: true
	               }
	           }
	       }
	   });
	   
    </script>
   
</body>
</html>