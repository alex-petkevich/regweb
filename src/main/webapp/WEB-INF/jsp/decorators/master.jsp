<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    
    <title><decorator:title default="Регистрация пользователей"/></title>
    <script type="text/javascript" src="js/lib/jquery.js"></script>
    <script type="text/javascript" src="js/lib/jquery-ui.js"></script>
    <link type="text/css" href="css/style.css" rel="stylesheet" />
    <link type="text/css" href="css/jquery-ui.css" rel="stylesheet" />

    <decorator:head/>
</head>
<body>

<div id="container">

    <div id="header">
        <h1> Регистрация анкет </h1>
    </div>
    <div id="menu">
        <a href=".">Анкеты</a> |
        <a href="addform">Добавление анкеты</a> |
        <a href="settings">Настройки</a> |
        <sec:authorize ifAnyGranted="ROLE_ADMIN">
            <a href="users">Пользователи</a> |
            <a href="user">Добавить пользователя</a> |
        </sec:authorize>
        <a href="logout">Выход</a>
    </div>
    <div id="content">
        <decorator:body/>
    </div>

    <div id="footer">
    </div>
</div>


</body>
</html>