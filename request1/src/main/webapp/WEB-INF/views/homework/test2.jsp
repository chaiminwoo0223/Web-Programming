<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  div.container { width: 600px; margin: 20px 0 0 20px; }
  form div { margin-bottom: 10px; }
  input { width: 200px; padding: 4px; }
  select { width: 200px; padding: 4px; }
  button { padding: 0.4em 3em;}
</style>
</head>
<body>
  <div class="container">
    <form method="post">
      <div>
          <select name="number">
              <option value="one" ${ number == "one" ? "selected" : "" }>one</option>
              <option value="two" ${ number == "two" ? "selected" : "" }>two</option>
              <option value="three" ${ number == "three" ? "selected" : "" }>three</option>
          </select>
      </div>      
      <div>
          <input type="text" value="${ number }"/>
      </div>
      <div>
        <button type="submit">OK</button>
      </div>
    </form>
  </div>
</body>
</html>