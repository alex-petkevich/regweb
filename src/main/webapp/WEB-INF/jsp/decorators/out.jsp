<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <title><decorator:title default="Регистрация пользователей"/></title>
    <script type="text/javascript" src="<spring:url value="/js/jquery.js" />"></script>
    <script type="text/javascript" src="<spring:url value="/js/jquery-ui.js" />"></script>
    <link type="text/css" href="<spring:url value="/css/style.css" />" rel="stylesheet" />
    <link type="text/css" href="<spring:url value="/css/jquery-ui.css" />" rel="stylesheet" />
    <decorator:head/>
</head>
<body>
<!-- Header -->
<div id="header">
    <div class="shell">
        <!-- Logo + Top Nav -->
        <div id="top">
            <h1><a href="#">Начальная страница</a></h1>
        </div>
        <!-- End Logo + Top Nav -->

        <!-- End Main Nav -->
    </div>
</div>
<!-- End Header -->

<!-- Container -->
<div id="container">
    <div class="shell">

        <decorator:body/>


        <!-- Main -->
    </div>
</div>
<!-- End Container -->

<!-- Footer -->
<div id="footer">
    <div class="shell">&nbsp;
    </div>
</div>
<!-- End Footer -->

</body>
</html>
