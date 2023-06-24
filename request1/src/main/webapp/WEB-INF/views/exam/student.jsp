<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
  div.container { width: 600px; margin: 20px 0 0 20px; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  button { padding: 0.4em 1em; margin-top: 10px; }
  label { display: block; }
</style>
</head>
<body>
  <div class="container">
    <form method="post">
    <h1>학생</h1>
      <div>
        <label>학번</label>
        <input type="text" name="number" value="${ number }" />
      </div>
      <div>
        <label>이름</label>
        <input type="text" name="name" value="${ name }" />
      </div>
      <button type="submit">저장</button>
    </form>
  </div>
</body>
</html>