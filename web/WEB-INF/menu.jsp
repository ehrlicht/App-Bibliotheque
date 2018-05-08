<%--
  Created by IntelliJ IDEA.
  User: mgtub
  Date: 4/14/2018
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  Object isClicked = request.getAttribute("clicked");
    boolean clicked = (isClicked == null); %>
<html>
<head>
    <title>Bibliothèque</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <span class="navbar-brand mb-0 h1 text-light">App Bibliotheque</span>
    <button class="navbar-toggler ml-1" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="navbar-collapse collapse justify-content-between align-items-center w-100" id="collapsibleNavbar">
        <ul class="navbar-nav mx-auto">
            <li class="nav-item active">
                <a class="nav-link float-right" href="/books">Livres</a>
            </li>
        </ul>
        <div class="nav navbar-nav flex-row float-right flex-nowrap">
            <form name="frm" method="get" action="/auth">
                <% if (clicked) { %>
                    <button class="btn btn-danger navbar-btn">Connexion</button>
                <% } %>
            </form>
        </div>
    </div>
</nav>

<br>
</body>
</html>
