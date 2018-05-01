<%--
  Created by IntelliJ IDEA.
  User: Artrit
  Date: 26.04.2018
  Time: 21:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des livres</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">
    <div class="row">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Titre</th>
                <th>Auteur(s)</th>
                <th>Editeur</th>
                <th>Année</th>
                <th>Supprimer</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Heidi</td>
                <td>Doe</td>
                <td>J.Spring</td>
                <td>1991</td>
                <td><button type="button" class="btn btn-outline-danger">Supprimer</button></td>
            </tr>
            <tr>
                <td>Heidi</td>
                <td>Doe</td>
                <td>J.Spring</td>
                <td>1991</td>
                <td><button type="button" class="btn btn-outline-danger">Supprimer</button></td>
            </tr>
            <tr>
                <td>Heidi</td>
                <td>Doe</td>
                <td>J.Spring</td>
                <td>1991</td>
                <td><button type="button" class="btn btn-outline-danger">Supprimer</button></td>
            </tr>
            </tbody>
        </table>

    </div>
    <div class="text-right">
        <button type="button" class="btn btn-outline-info">Nouveau</button>
    </div>
</div>
</body>
</html>
