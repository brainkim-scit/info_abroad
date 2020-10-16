<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<title>Info_Abroad</title>
<style type="text/css">
	@font-face {
		font-family: basic;
		src: url("resources/fonts/Jua.ttf");
	}
	html, body {
       height: 100%;
       margin: 0;
       font-family: basic;
	}
	
	a:link{
 		color:black;
 		text-decoration: none;
 	}
 	a:visited{
 		color:black;
 		text-decoration: none;
 	}
 	a:active{
 		color:black;
 		text-decoration: none;
		-webkit-tap-highlight-color : rgba(0,0,0,0); 		
 	}
 	
 	.nation{
 		margin: 9px 9px;
	    border-radius: 5px;
 		width: 90px;
 		height: 60px;
 		display: inline-block;
 		background-color: white;
 	}
 	img{
 		opacity: 1;
 		transition-duration: 1s;
		transition-timing-function: ease-out;
	    border-radius: 5px;
	    box-shadow: 3px 5px 5px 0px;
 		width: 90px;
 		height: 60px;
 	}
 	
 	img:hover {
		opacity: 0.5;
		transition: background 1s ease-out;
	}
	
	.wrapper{
		height: 100%;
		width: 100%;
	}
	.header{
		border: solid 5px black;
    	box-sizing: border-box;
		height: 10%;
		width: 100%;
		text-align: center;
		border-radius: 10px;
	}
	.body{
		height: 80%;
		width: 100%;
		text-align: center;
		border: solid 12px white;
    	border-radius: 26px;
		padding: 15px;
    	box-sizing: border-box;
    	overflow-y: scroll;
    	background-image: url("resources/img/background_default.jpg");
    	background-size: 100% auto;
    	background-repeat: no-repeat;
	}
	.body::-webkit-scrollbar {
	    display: none;
	}
	@media screen and (max-width: 768px){
		.body{
			background-image: url("resources/img/background.jpg");
	    	background-size: 100% auto;
	    	background-repeat: no-repeat;
		}
	}
	.footer{
		border: solid 5px black;
    	box-sizing: border-box;
		height: 10%;
		width: 100%;
		text-align: center;
		border-radius: 10px;
	}
 	
  	.menu {position:absolute;top:5%;left:92%;transform:translate(-50%,-50%);}
	input[id="menuicon"] {display:none;}
	input[id="menuicon"] + label {display:block;width:40px;height:30px;position:relative;cursor:pointer;}
	input[id="menuicon"] + label span {display:block;position:absolute;width:100%;height:5px;border-radius:30px;background:#000;transition:all .35s;}
	input[id="menuicon"] + label span:nth-child(1) {top:0;}
	input[id="menuicon"] + label span:nth-child(2) {top:50%;transform:translateY(-50%);}
	input[id="menuicon"] + label span:nth-child(3) {bottom:0;}
	input[id="menuicon"]:checked + label span:nth-child(1) {top:50%;transform:translateY(-50%) rotate(45deg);}
	input[id="menuicon"]:checked + label span:nth-child(2) {opacity:0;}
	input[id="menuicon"]:checked + label span:nth-child(3) {bottom:50%;transform:translateY(50%) rotate(-45deg);}
	
	#label_menu:active{
		-webkit-tap-highlight-color : rgba(0,0,0,0);
	}
	
</style>
<script src="resources/js/jquery.js"></script>
<script src="resources/js/api.js"></script>
<script type="text/javascript">
	let pageno = 1;
	$(function(){
		nations();
	})
</script>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<h1 style="display: inline-block;">Information</h1>
			<div class="menu">
				<input type="checkbox" id="menuicon">
				<label for="menuicon" id="label_menu">
					<span></span>
					<span></span>
					<span></span>
				</label>
			</div>
		</div>
		<div class="body">
		</div>
		<div class="footer">
			<h1 style="display: inline-block;">footer</h1>
		</div>
	</div>
</body>
</html>