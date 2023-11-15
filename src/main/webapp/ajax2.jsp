<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type = "text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type = "text/javascript">
	$(function() {
		$('#b1').click(function (x) {
			$.ajax({
				url: "test",
				success: function(x) {
					alert("ajax통신결과 >> " + x)
				}//success
			}) //url, success
		}) // b1
	}) // $
</script>
</head>
<body>
	<button id = "b1">컴퓨터 구매 항목 확인</button>
	<hr color = "red">
	<div id = "result"> ajax 결과 들어가는 곳</div>
</body>
</html>