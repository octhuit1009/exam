<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>default page</title>
</head>
<body>
<h1>default page</h1>

<form action="/user/login" method="post">
    username: <input name="username" value="a"><br/>
    password: <input name="password" type="password" value="a"><br/>
    <input type="submit" value="LOGIN">
</form>
<hr>
<c:import url="message/add.jsp"/>
${requestScope.msg}
</body>
</html>
