<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px 0 0 20px; }
  form div { margin-bottom: 20px; }
  label { display: block; }
  input { width: 200px; padding: 5px; }
  button { padding: 0.4em 1em; margin-top: 10px; }
  hr { margin-top: 80px; }
  .error { color: red; margin: 5px; }
</style>
</head>
<body>

<div class="container">
  <form method="post">
    <h1>제품 등록</h1>
    <div>
      <label>제품명</label>
      <input type="text" name="product" value="${ product }" />
    </div>
    <div>
      <label>가격</label>
      <input type="text" name="num1" value="${ num1 }"/>
    </div>
    <div>
      <label>수량</label>
      <input type="text" name="num2" value="${ num2 }"/>
    </div>
    <button type="submit" class="btn">저장</button>
    </form>
    <div class="error">${ errorMsg }</div>
</div>
</body>
</html>