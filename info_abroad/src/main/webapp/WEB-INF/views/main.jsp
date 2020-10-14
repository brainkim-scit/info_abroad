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
		overflow: scroll;
	}
	.body > div > div{
		padding: 2% 2% 2% 2%;
		width: 94%;
		border: solid 1px black;
		margin: 1% auto;
		border-radius: 10px;
	}
	.footer{
		background-color: pink;
		height: 10%;
		width: 100%;
		text-align: center;
	}
	
</style>
<script src="resources/js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		testAPI();
	})
	
	function testAPI(){
		$.ajax({
			method : 'GET',
			url : 'test',
			dataType : 'XML',
			success : function(data){
				var item = '';
				$(data).find('ITEM').each(function(){
					item += '<div>';
					item += $('rctntcSj',this).text()+'<br>';
					item += $('rctntcSprtQualfCn',this).text()+'<br>';
					item += $('dsptcNationScd',this).text()+'<br>';
					item += $('dsptcKsco',this).text()+'<br>';
					item += $('joDemandCareerStleScd',this).text()+'<br>';
					item += $('joDemandAcdmcrScd',this).text();
					item += '</div>';
				})
				$('.body > div').append(item);
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