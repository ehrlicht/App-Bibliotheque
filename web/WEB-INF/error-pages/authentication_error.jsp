<%@ page import="com.sun.org.glassfish.gmbal.IncludeSubclass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
          integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
    <style type="text/css">
        <%@ include file="/styles/authentication_style.css" %>
    </style>
</head>
<body>
<%@include file="../menu.jsp" %>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-12 text-center">
            <h2 id="title">Connexion</h2>
            <hr>
        </div>
    </div>
    <form class="form-horizontal" action="authenticate" method="post">
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <div class="form-group has-danger">
                    <label>Identifiant</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="username" placeholder="Entrer identifiant" name="user" required autofocus>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <div class="form-group">
                    <label>Mot de passe</label>
                    <div class="input-group">
                        <input type="password" class="form-control" name="pwd" placeholder="Entrer mot de passe" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <button type="submit" class="btn btn-outline-secondary btn-block"><i class="fa fa-sign-in"></i>Se connecter</button>
            </div>
        </div>
    </form>
    <div class="row justify-content-center align-items-center">
        <div class="col-xl-5 col-12">
            <div class="alert alert-danger alert-dismissible fade show">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>Le nom d'utilisateur ou le mot passe est faux.</strong>
            </div>
        </div>
    </div>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</html>
