<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  body { font-family: 굴림체; }
  div.container { width: 310px; margin: 20px auto; }
  table { width: 300px; border-collapse: collapse; }
  thead tr { background-color: #eee; }
  td, th { border: 1px solid #aaa; padding: 5px; }
  td:nth-child(1) { background-color: #eee; }
</style>
</head>
<body>

<div class="container">

<h1>책 등록 성공</h1>

<table>
  <tr>
    <td>제목</td>
    <td>${ bookname }</td>
  </tr>
  <tr>
    <td>저자</td>
    <td>${ writer }</td>
  <tr>
    <td>출판사</td>
    <td>${ publisher }</td>
  </tr>
  <tr>
    <td>카테고리</td>
    <td>${ radio }</td>
  </tr>
</table>

</div>
</body>
</html>