<%@ page import="com.hopeurl.JSP.domain.User" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/4/2
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
request.setAttribute("username","zhangsan");
session.setAttribute("hobby","sing");
    User user = new User();
    user.setAge(18);
    user.setUsername("songshi");
    user.setBirthday(new Date());
    user.setPassword("lzvrzone");
    session.setAttribute("user",user);
    List<String> list=new ArrayList<>();
    list.add("张三");
    list.add("李四");
    list.add("王五");
    list.add("赵六");
    list.add("田七");
    request.setAttribute("list",list);
    Map<Integer,String>map= new HashMap<>();
    map.put(1,"迪丽热巴");
    map.put(2,"降央卓玛");
    map.put(3,"马儿扎哈");
    request.setAttribute("map",map);

%>
${username}
${hobby}<br>
${user.username}<br>
${user.toString()}<br>
${user.password}
${user.birth}<br>
${list[0]}<br>
${list[1]}<br>
${list[2]}<br>
${map}<br>

</body>
</html>
