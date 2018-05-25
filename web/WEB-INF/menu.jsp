<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    boolean isAuthenticated = request.isUserInRole("ADMIN");
%>
<html>
<head>
    <title>Bibliothèque</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>
        #cssForm form { margin: 0 !important; padding: 0 !important; }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <span class="navbar-brand mb-0 h1 text-light">App Biblioth&egrave;que</span>
    <button class="navbar-toggler ml-1" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse justify-content-between align-items-center w-100" id="collapsibleNavbar">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
                <a class="btn btn-link float-center text-light" href="showBooks">Livres</a>
            </li>
        </ul>
        <div class="nav navbar-nav flex-row float-right flex-nowrap" style="margin-left: 80px">
            <form id="cssForm" name="frm" method="get" action=<%="authenticate"%>>
                <% if (request.getRequestURI().equals("/authenticate") || request.getRequestURI().equals(request.getContextPath() + "/WEB-INF/error-pages/authentication_error.jsp")) { %>
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
</body>
</html>
