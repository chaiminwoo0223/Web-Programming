<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 800px; margin: 50px auto; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(4) { text-align: center; }
    .btn { padding: 0.4em 1em; border: 1px solid gray;
       border-radius: 0.5em; background: linear-gradient(#fff, #ddd);
       text-decoration: none; color: black; display: inline-block; }
    a.btn { float: right; margin: -20px 0 5px 0; }
  </style>
</head>
<body>
<div class="container">

  <a href="create" class="btn">강좌등록</a>
  <table class="table table-bordered table-condensed">
    <thead>
      <tr>
        <th>연도</th>
        <th>학기</th>
        <th>이수구분</th>
        <th>과목코드</th>
        <th>강좌명</th>
        <th>담당교수</th>
        <th>시간</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="course" items="${ courses }">
        <tr>
          <td>${ course.year }</td>
          <td>${ course.semester }</td>
          <td>${ course.gubun }</td>
          <td>${ course.code }</td>
          <td><a href="edit?id=${ course.id }">${ course.title }</td>
          <td>${ course.professorName }</a></td>
          <td>${ course.sigan }</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>

</div>
</body>
</html>