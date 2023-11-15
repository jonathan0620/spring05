<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table border="1">
	<thead>
		<tr style="background: yellow">
			<th>영화제목</th>
			<th>영화가격</th>
		</tr>
	</thead>
	<tbody>
		<tr style="background: pink">
			<td>${vo.title}</td>
			<td>${vo.price}</td>
		</tr>
		<tr>
			<td>문자인증받기</td>
		</tr>
	</tbody>
</table>
