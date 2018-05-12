<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: mgtub
  Date: 5/1/2018
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
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

    </style>

    <title>Nouveau Livre</title>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">
    <form id="form_newBook" class="form-horizontal" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Titre</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="titre_input" id="titre_input" placeholder="Entrer le titre">
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Auteur</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="auteur_input" id="auteur_input" placeholder="Entrer l'auteur">
            </div>
        </div>
        <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Editeur</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="editeur_input" id="editeur_input" placeholder="Entrer l'editeur">
            </div>
        </div>
        <div class="form-group row">
            <label  class="col-sm-2 col-form-label">Ann&eacute;e</label>
            <div class="col-sm-10">
                <input type="numeric" class="form-control" name="annee_input" id="annee_input" maxlength="4" max="9999" placeholder="Entrer l'annee">
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                <button type="submit" class="btn btn-primary btn-block">Enregistrer nouveau livre</button>
            </div>
        </div>
    </form>
</div>


</body>
</html>
