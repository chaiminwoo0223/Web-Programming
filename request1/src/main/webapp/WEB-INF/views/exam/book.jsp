<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px 0 0 20px; }
  div.radio label { display: inline; margin-right: 20px 0 0 20px; }
  .error { color: red; margin: 5px; }
  form div { margin-bottom: 20px; }
  input[type=text] { width: 200px; padding: 5px; }
  label { display: block; }
  button { padding: 0.4em 1em; margin-top: 10px; }
</style>
</head>
<body>

<div class="container">
  <form method="post">
    <h1>책 등록</h1>
    <div>
      <label>제목</label>
      <input type="text" name="bookname" value="${ bookname }" />
    </div>
    <div>
      <label>저자</label>
      <input type="text" name="writer" value="${ writer }"/>
    </div>
    <div>
      <label>출판사</label>
      <input type="text" name="publisher" value="${ publisher }"/>
    </div>
    <label>카테고리</label>
    <div class="radio">
      <label><input type="radio" name="radio" value="소설" ${ radio == "소설" ? "checked" : "" } />소설</label>
      <label><input type="radio" name="radio" value="과학" ${ radio == "과학" ? "checked" : "" } />과학</label>
      <label><input type="radio" name="radio" value="역사" ${ radio == "역사" ? "checked" : "" } />역사</label>
    </div> 
    <button type="submit" class="btn">저장</button>
    </form>
    <div class="error">${ errorMsg }</div>
</div>
</body>
</html>