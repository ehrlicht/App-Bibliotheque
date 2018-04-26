<%@ page import="com.sun.org.glassfish.gmbal.IncludeSubclass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
<% @include file="menu.jsp"; %>
<div class="container-fluid">
    <div class="p-3 mb-2 text-dark, rounded" style="background-color:lightblue">
        <form class="form-horizontal" action="j_security_check" method="post">
            <div class="form-group">
                <div class="form-group row">
                    <label class="control-label col-sm-1" for="username">Identifiant :</label>
                    <input type="text" class="form-control col-sm-2" id="username" placeholder="Entrer identifiant"
                           name="j_username" size="25">
                </div>
                <div class="form-group row">
                    <label class="control-label col-sm-1" for="pwd">Mot de passe :</label>
                    <input type="password" class="form-control col-sm-2" id="pwd" placeholder="Entrer mot de passe"
                           name="j_password">
                </div>
                <div class="form-group row col-sm-4">
                    <button type="submit" class="btn btn-default">Se connecter</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
