<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isAuthenticated = request.isUserInRole("ADMIN");
%>
<html>
<head>
    <title>App Biblioth&eacute;que</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <style>
        #cssForm form {
            margin: 0 !important;
            padding: 0 !important;
        }

        <%@include file="/styles/authentication_style.css" %>
        table {
            border-collapse: separate;
            border-spacing: 1em;
        }

        form {
            margin: 0 !important;
            padding: 0 !important;
        }

        #cssTable td {
            vertical-align: middle;
        }

        table td input {
            width: 100%;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <a href="<%=request.getContextPath()%>/main" class="navbar-brand mb-0 h1 text-light">App Biblioth&egrave;que</a>
    <button class="navbar-toggler ml-1" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse justify-content-between align-items-center w-100" id="collapsibleNavbar">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
                <a class="btn btn-link float-center text-light" style="font-size: 16px"
                   href="<%=request.getContextPath()%>/showBooks">Livres</a>
            </li>
        </ul>
        <div class="nav navbar-nav flex-row float-right flex-nowrap" style="margin-left: 80px">
            <form id="cssForm" method="get" action="<%=request.getContextPath()%>/authenticate" .>
                <% if (request.getRequestURI().equals("/WEB-INF/authentication.jsp")) { %>
                <button class="btn btn-danger navbar-btn invisible">Connexion</button>
                <% } else { %>
                <% if (isAuthenticated) { %>
                <button class="btn btn-danger navbar-btn visible">D&eacute;connexion</button>
                <% } else { %>
                <button class="btn btn-danger navbar-btn visible">Connexion</button>
                <% } %>
                <% } %>
            </form>
        </div>
    </div>
</nav>