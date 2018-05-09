<%@ page import="com.sun.org.glassfish.gmbal.IncludeSubclass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Connexion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css" integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
    <style type="text/css">
        <%@ include file="/styles/authentication_style.css" %>
    </style>
</head>
<body>
<%  request.setAttribute("login", true); %>
<%@include file="menu.jsp" %>

<div class="container">

        <form id="form_auth" class="form-horizontal" role="form" action="j_security_check" method="post">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-12 text-center">
                    <h2 id="title">Connexion</h2>
                    <hr>
                </div>
            </div>
            <div class="row justify-content-center align-items-center">
                <div class="col-xl-6 col-12">
                    <div class="form-group has-danger">
                        <label class="sr-only">Identifiant</label>
                        <div class="input-group">
                            <input type="text" class="form-control"  id="username" placeholder="Entrer identifiant" name="j_username" required autofocus>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center align-items-center">
                <div class="col-xl-6 col-12">
                    <div class="form-group">
                        <label class="sr-only">Mot de passe</label>
                        <div class="input-group">
                            <input type="password" class="form-control" name="j_password" id="pwd" placeholder="Entrer mot de passe" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center align-items-center">
                <div class="col-xl-6 col-12">
                    <button type="submit" class="btn btn-outline-secondary btn-block"><i class="fa fa-sign-in"></i> Login</button>
                </div>
            </div>
        </form>
</div>


</body>
</html>
