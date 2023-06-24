<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 400px; margin: 20px 0 0 20px; }
  div.radio label { display: inline; margin-right: 20px 0 0 20px; }
  form div { margin-bottom: 20px; }
  input[type=text] { width: 200px; padding: 5px; }
  button { padding: 0.4em 1em; margin-top: 10px; }
</style>
</head>
<body>

<div class="container">
  <form method="post">
    <div class="radio">
      <label><input type="radio" name="color" value="yellow" ${ color == "yellow" ? "checked" : "" } />yellow</label>
      <label><input type="radio" name="color" value="red" ${ color == "red" ? "checked" : "" } />red</label>
      <label><input type="radio" name="color" value="blue" ${ color == "blue" ? "checked" : "" } />blue</label>
      <button type="submit" class="btn">확인</button>
    </div> 
    </form>
</div>
</body>
</html>