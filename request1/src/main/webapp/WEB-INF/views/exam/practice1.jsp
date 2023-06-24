<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  table { font-family: 굴림체; font-weight: bold; border-collapse: collapse; }
  td, th { border: 1px solid #aaa; padding: 5px; }
</style>
</head>
<body>
	<div class="container">
		<form method="post">
			<table>
				<tr>
					<td>학번</td>
					<td>${ myNumber }</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${ myName }</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>