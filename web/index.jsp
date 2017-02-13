<%--
    Document   : index
    Created on : 12/02/2017, 08:37:44 AM
    Author     : ricar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="public/css/reset.css" rel="stylesheet" type="text/css"/>
        <link href="public/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="public/css/styles.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class=".container-fluid">
            <header class="col-md-12">
                <%@include file="WEB-INF/header.jsp" %>
            </header>
            <nav class="col-md-12">
                <%@include file="WEB-INF/navbar.jsp" %>
            </nav>
        </div>
        <div class="container">
            <aside class="col-md-2">
                <%@include file="WEB-INF/aside.jsp" %>
            </aside>
            <section class="main-content col-md-10">

            </section>

        </div>
        <div class=".container-fluid">
            <footer class="col-md-12"><%@include file="WEB-INF/footer.jsp" %></footer>
        </div>
    </body>
</html>
