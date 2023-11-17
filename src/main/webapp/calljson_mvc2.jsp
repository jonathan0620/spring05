<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() { 
		$('#b1').click(function() {
			$.ajax({
				url: "string",
				success: function(string) {
					alert(string)
					$('#result').text(string)
					//winner이면, winner이미지를 
					//아니면, looser이미지를 넣어주세요.
					let img = "<img src = 'resources/img/no.png'>";
					if(string == 'winner'){
						img = "<img src = 'resources/img/ok.jpg'>";
					}
					$('#result').append(img)
				}//success
			})//ajax
		})//b1
		$('#b2').click(function() {
			$.ajax({
				url: "json1",
				success: function(json) {
					//alert(json)
					//$('#result').text(json)
					//json을 프린트할 일이 있으면 브라우저의 console을 
					//더 자세하게 출력할 수 있다. 
					console.log(json)
					console.log(json.writer)
					
					id_value = json.id
					title_value = json.title
					content_value = json.content
					writer_value = json.writer
					
					data = id_value + " " + title_value + " " + content_value + " " + writer_value
					$('#result').append(data + "<br>")
				}//success
			})//ajax
		})//b2
		$('#b3').click(function() {
			$.ajax({
				url: "jsonbook",
				success: function(array) {
					
					console.log(array)
				$(array).each(function(i, json){
					d_value = json.id
					title_value = json.title
					content_value = json.content
					writer_value = json.writer

					data = id_value + " " + title_value + " " + content_value + " " + writer_value
					$('#result').append(data + "<br>")
					})//for				
				}//success
			})//ajax
		})//b3
	})//$
</script>
</head>
<body>
	<button id="b1">JSON으로 받아와보자(string)</button>
	<button id="b2">JSON2으로 받아와보자(json)</button>
	<button id="b3">JSON2으로 받아와보자(array)</button>
	<hr color="red">
	<div id="result" style="background: yellow; width:800px; hegith:800px;">ajax통신 결과들어가는 곳.<hr></div>
</body>
</html>