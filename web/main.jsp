<%--
  Created by IntelliJ IDEA.
  User: misery
  Date: 27.07.2019
  Time: 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
    <p>Вы авторизованы как "${sessionScope.login}"</p>

    <h1>Ваши данные</h1>
    <form action="data" method="post">
        <label>Фамилия</label> <input type="text" name="lastname" value="${sessionScope.lastname}"/> <br>
        <label>Имя</label> <input type="text" name="firstname" value="${sessionScope.firstname}"/> <br>
        <label>Отчество</label> <input type="text" name="fathername" value="${sessionScope.fathername}"/> <br>

        <input type = "submit" value = "Обновить" /> <br>
    </form>
    <form action="exit" method="post">
        <input type = "submit" value = "Выйти" />
    </form>
</body>
</html>
