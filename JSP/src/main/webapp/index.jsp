<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="500.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<%
  int a=1/0;
%>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>