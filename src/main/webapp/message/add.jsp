<!DOCTYPE html><%@ page pageEncoding="UTF-8"%><%@ include file="/commons/inc.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>message add page</title>
    </head>
    <body>
        <h1>Message Add Page</h1>
        <form action="${ctx}/message/add" method="post">
            NAME: <input name="name"><br>
            CONTENT: <input name="content"><br>
            <input type="submit" value="ADD">
        </form>
    </body>
</html>