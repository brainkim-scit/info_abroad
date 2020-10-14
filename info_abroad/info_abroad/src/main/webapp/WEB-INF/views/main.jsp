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
 	}
	
	.wrapper{
		height: 100%;
		width: 100%;
	}
	.header{
		background-color: rgb(228, 243, 92);
		height: 10%;
		width: 100%;
		text-align: center;
	}
	.body{
		height: 80%;
		width: 100%;
		text-align: center;
	}
	.body > div{
		width: 100%;
		height: 100%;
		overflow-y: scroll;
	}
	.body > div > a > div{
		padding: 2% 2% 2% 2%;
		width: 94%;
		border: solid 1px black;
		margin: 1% auto;
		border-radius: 10px;
		text-align: left;
	}
	.footer{
		background-color: pink;
		height: 10%;
		width: 100%;
		text-align: center;
	}
 	
  	.menu {position:absolute;top:5%;left:92%;transform:translate(-50%,-50%);}
	input[id="menuicon"] {display:none;}
	input[id="menuicon"] + label {display:block;width:50px;height:40px;position:relative;cursor:pointer;}
	input[id="menuicon"] + label span {display:block;position:absolute;width:100%;height:5px;border-radius:30px;background:#000;transition:all .35s;}
	input[id="menuicon"] + label span:nth-child(1) {top:0;}
	input[id="menuicon"] + label span:nth-child(2) {top:50%;transform:translateY(-50%);} /* ����ϰ� ����� �� �ִ� style top:calc(50% - 2.5px); margin-top:-2.5px;*/
	input[id="menuicon"] + label span:nth-child(3) {bottom:0;}
	input[id="menuicon"]:checked + label span:nth-child(1) {top:50%;transform:translateY(-50%) rotate(45deg);}
	input[id="menuicon"]:checked + label span:nth-child(2) {opacity:0;}
	input[id="menuicon"]:checked + label span:nth-child(3) {bottom:50%;transform:translateY(50%) rotate(-45deg);}
	
</style>
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		incruit();
		statistics();
		corona();
	})
	
	function incruit(){
		$.ajax({
			method : 'GET',
			url : 'incruit_status',
			dataType : 'XML',
			success : function(data){
				var item = '';
				$(data).find('ITEM').each(function(){
					item += '<a href="'+$('linkUrl',this).text()+'">'
					item += '<div>';
					item += '채용공고<br>'+$('rctntcSj',this).text()+'<br>';
					item += '신청자격<br><div style="overflow:hidden; white-space: nowrap; text-overflow:ellipsis;">'+$('rctntcSprtQualfCn',this).text()+'</div>';
					item += '국가 : '+$('dsptcNationScd',this).text()+'<br>';
					item += '분야 : '+$('dsptcKsco',this).text()+'<br>';
					item += '경력 : '+$('joDemandCareerStleScd',this).text()+'<br>';
					item += '학력 : '+$('joDemandAcdmcrScd',this).text();
					item += '마감일 : '+$('rctntcEndDay',this).text();
					item += '</div>';
					item += '</a>'
				})
				$('.body > div').append(item);
			},
			error : function(e){
				console.log(e);
			}
		})
	}
	
	function statistics(){
		$.ajax({
			method : 'GET',
			url : 'statistics',
			dataType : 'XML',
			success : function(data){
				console.log(data);
			},
			error : function(e){
				console.log(e);
			}
		})
	}
	
	function corona(){
		$.ajax({
			method : 'GET',
			url : 'corona_abroad',
			dataType : 'json',
			success : function(data){
				console.log(data);
			},
			error : function(e){
				console.log(e);
			}
		})
	}
</script>
</head>
<body>
	<div class="wrapper">
		<div class="header">
			Header
			<div class="menu">
				<input type="checkbox" id="menuicon">
				<label for="menuicon">
					<span></span>
					<span></span>
					<span></span>
				</label>
			</div>
		</div>
		<div class="body">
			<div style="">
			</div>
		</div>
		<div class="footer">
			footer
		</div>
	</div>
</body>
</html>