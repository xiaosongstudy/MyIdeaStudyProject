<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/4/2
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
List<String> list=new ArrayList<>();
list.add("zhangsan");
request.setAttribute("list",list);

%>
<c:if test="${not empty list}">
    <h1>我是真的</h1>
</c:if>

</body>
</html>
