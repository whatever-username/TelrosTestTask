<%--
  Created by IntelliJ IDEA.
  User: misery
  Date: 27.07.2019
  Time: 5:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
    <p>Форма авторизации</p>
    <form action="auth" method="post">
        <label>Логин</label> <input type="text" name="login" /> <br>
        <label>Пароль</label> <input type="text" name="pass" /> <br>
        <input type = "submit" value = "Авторизоваться" /> <br>
    </form>
</body>
</html>
