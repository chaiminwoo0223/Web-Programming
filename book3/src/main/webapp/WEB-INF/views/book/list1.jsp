<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 900px; margin: 50px auto; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(n+3):nth-child(-n+5) { text-align: center; }
    input { padding: 5px; font-size: 10pt; }
    button { margin: 10px ; padding: 0.4em 2em; }
  </style>
</head>
<body>
<div class="container">
  <h1>책목록</h1>
  <form>
    <label>이름</label>
    <input type="text" name="srchText" value="${ srchText }" placeholder="검색조건" />
    <button type="submit">조회</button>
  </form>
  
  <table class="table table-bordered table-condensed">
    <thead>
      <tr>
        <th>제목</th>
        <th>저자</th>
        <th>가격</th>
        <th>카테고리</th>
        <th>카테고리ID</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="book" items="${ books }">
        <tr>
          <td>${ book.title }</td>
          <td>${ book.author }</td>
          <td>${ book.price }</td>
          <td>${ book.categoryName }</td>
          <td>${ book.categoryId }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>