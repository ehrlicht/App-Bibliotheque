<%--
  Created by IntelliJ IDEA.
  User: mgtub
  Date: 4/14/2018
  Time: 11:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
</head>
<body>

<div class="container-fluid">
    <div class="page-header">
        <div class="p-3 mb-2 text-dark, rounded" style="background-color:lightgrey">
            <div class="row">
                <div class="col-sm" style="text-align: left">
                    <div class="content">
                        <h4>App Bibliothèque</h4>
                    </div>
                </div>
                <div class="col-sm" style="text-align: center">
                    <div class="content">
                        <a href="listeLivres.jsp" class="btn btn-link btn-lg" role="button" formaction="/liste">Livres</a>
                    </div>
                </div>
                <div class="col-sm" style="text-align: right">
                    <input type="button" class="btn btn-primary btn-md" value="Connexion" formaction="/connexion"></input>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
