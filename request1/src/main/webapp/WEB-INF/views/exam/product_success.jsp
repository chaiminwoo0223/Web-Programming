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

<h1>제품 등록 성공</h1>

<table>
  <tr>
    <td>제품명</td>
    <td>${ product }</td>
  </tr>
  <tr>
    <td>수량</td>
    <td>${ num2 }</td>
  <tr>
    <td>가격</td>
    <td>${ num1 }</td>
  </tr>
  <tr>
    <td>금액</td>
    <td>${ num1*num2 }</td>
  </tr>
</table>

</div>
</body>
</html>