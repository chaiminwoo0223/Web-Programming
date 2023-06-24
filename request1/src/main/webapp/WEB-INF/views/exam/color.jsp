<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 700px; height: 250px; margin: auto; padding: 10px;}
  form div { margin-bottom: 10px; }
  select { width: 200px; padding: 4px; }
  button { padding: 0.4em 3em;}
  h1{margin-top: 150px;}
</style>
</head>
<body>
  <div class="container" style="background-color: ${ color }">
    <form method="post">
    <h1>Color</h1>
      <div>
          <select name="color">
              <option value="red" ${ color == "red" ? "selected" : "" }>red</option>
              <option value="blue" ${ color == "blue" ? "selected" : "" }>blue</option>
              <option value="green" ${ color == "green" ? "selected" : "" }>green</option>
              <option value="yellow" ${ color == "yellow" ? "selected" : "" }>yellow</option>
          </select>
          <button type="submit">저장</button>
      </div>  
    </form>
    <h4>${ color }</h4>
  </div>
  
</body>
</html>