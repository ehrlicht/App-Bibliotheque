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
    <title>Ajouter un livre</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css"
          integrity="sha384-G0fIWCsCzJIMAVNQPfjH08cyYaUtMwjJwqiRKxxE/rx96Uroj1BtIQ6MLJuheaO9" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic" rel="stylesheet">
    <style type="text/css">
        <%@include file="/styles/authentication_style.css" %>
    </style>
</head>
<body>
<%@include file="menu.jsp" %>
<div>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<%= request.getContextPath()+"/main" %>">Home</a></li>
        <li class="breadcrumb-item"><a href="<%= request.getContextPath()+"/showBooks" %>">Livres</a></li>
        <li class="breadcrumb-item active">Nouveau Livre</li>
    </ol>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-12 text-center">
            <h2 id="title">Ajouter un livre</h2>
            <hr>
        </div>
    </div>
    <form id="form_newBook" class="form-horizontal" method="post" action="addBook">

        <div class="row justify-content-center align-items-left">
            <div class="col-xl-6 col-12">
                <div class="form-group has-feedback">
                    <label>Titre*</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="title" placeholder="Anna Kar&eacute;nine">
                    </div>
                    <div style="color: #FF0000;">${errorTitle}</div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-left">
            <div class="col-xl-6 col-12">
                <div class="form-group has-feedback">
                    <label>Auteur</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="author" placeholder="L&eacute;on Tolsto&iuml;">
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-left">
            <div class="col-xl-6 col-12">
                <div class="form-group has-feedback">
                    <label>Editeur</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="publisher" placeholder="Rousky vestnik">
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-6 col-12">
                <div class="form-group has-feedback">
                    <label>Ann&eacute;e*</label>
                    <div class="input-group">
                        <input type="number" class="form-control" name="year" maxlength="4" min="-999" max="9999" placeholder="1877" aria-describedby="notice">
                    </div>
                    <div>
                        <small id="notice" class="form-text text-muted"><b>Les champs marqu&eacute;s d'un * sont requis.</b></small>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-6 col-12">
                <div class="form-group has-feedback">
                    <label class="sr-only">Enregistrer</label>
                    <div class="input-group">
                        <button type="submit" class="btn btn-primary btn-block">Enregistrer nouveau livre</button>
                    </div>
                </div>
            </div>
        </div>
        <%System.out.println("Error message = "+request.getAttribute("errorMessage"));%>
        <%System.out.println("Confirm message = "+request.getAttribute("confirmMessage"));%>
        <% if((Boolean)request.getAttribute("errorMessage")){ %>
        <%@include file="error-pages/add_book_error.jsp"%>
        <%}%>
        <% if((Boolean)request.getAttribute("confirmMessage")){ %>
        <%@include file="confirmation_modal.jsp"%>
        <script>
            $("#myModal").modal()
        </script>
        <%}%>
    </form>
</div>
</body>
</html>
