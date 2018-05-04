<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:first-child {
    background-color: skyblue;
}
</style>
</head>
<body>
<table>
  <tr>
    <th>닉네임 </th>
    <th>내 용 </th>
    <th>작성시간</th>
  </tr>
  <tr>
    <td>user1</td>
    <td>Content1</td>
    <td><%=new Date().toLocaleString() %></td>
  </tr>
  <tr>
    <td>user2</td>
    <td>Content2</td>
    <td><%=new Date().toLocaleString() %></td>
  </tr>
  <tr>
    <td>user3</td>
    <td>Content3</td>
    <td><%=new Date().toLocaleString() %></td>
  </tr>


</table>


</body>
</html>