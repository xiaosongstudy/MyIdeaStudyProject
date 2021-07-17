<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.hopeurl.JSP.domain.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="javax.xml.crypto.Data" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/4/3
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%
request.setAttribute("number",14);
%>
<c:choose>
    <c:when test="${number==1}"><h1>星期一</h1></c:when>
    <c:when test="${number==2}">星期二</c:when>
    <c:when test="${number==3}">星期三</c:when>
    <c:when test="${number==4}">星期四</c:when>
    <c:when test="${number==5}">星期五</c:when>
    <c:when test="${number==6}">星期六</c:when>
    <c:when test="${number==7}">星期天</c:when>
    <c:otherwise>
        数字输入错误
    </c:otherwise>
</c:choose>
<hr>--%>
<%--
begin  是表示从几开始 相当于for循环中的int i=0;即初始化i
end   是表示到几结束即for循环中的条件i<=10等等
step  是表示增量即当step=1时候表示i++
var   是表示变量名
items 是表示容器对象

--%>
<%--<c:forEach begin="1" end="10" var="i" varStatus="s" step="1">
    i=${i}&nbsp;&nbsp;${s.index}<br>
</c:forEach>--%>
<%--遍历ArrayList集合--%>
<%--<%
    List<String> list=new ArrayList<>();
    list.add("zhangsan");
    list.add("lisi");
    list.add("wangwu");
    list.add("zhaoliu");
    list.add("王麻子");
    request.setAttribute("list",list);
%>
<c:forEach items="${list}" var="str" varStatus="s">
 ${s.index}-->${str}<br>
</c:forEach>--%>

<%--联系题--%>
<%
    User user = new User("张三", "123", 18, new Date());
    User user2 = new User("李四", "123", 20, new Date());
    List<User>list=new ArrayList<>();
    list.add(user);
    list.add(user2);
    list.add(new User("王五","123",33,new Date()));
    request.setAttribute("list",list);

%>
<table border="1" width="500" align="center">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>出生日期</th>
    </tr>
    <c:forEach items="${list}" var="user" varStatus="s">
       <c:if test="${s.count%2==0}">
           <tr bgcolor="orange">
               <td>${s.count}</td>
               <td>${user.username}</td>
               <td>${user.age}</td>
               <td>${user.birth}</td>
           </tr>
       </c:if>
        <c:if test="${s.count%2!=0}">
            <tr bgcolor="#deb887">
                <td>${s.count}</td>
                <td>${user.username}</td>
                <td>${user.age}</td>
                <td>${user.birth}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>
</body>
</html>
