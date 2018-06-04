<%@ page import="ch.bibliotheque.model.Book" %>
<%@ page import="java.util.List" %><%--
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.12/css/all.css">
    <style type="text/css">
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
<%@include file="menu.jsp" %>
<div class="container-fluid">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-12 text-center">
                <h2 id="title">Liste des livres</h2>
                <hr>
            </div>
        </div>
        <div class="table-responsive">
            <% List<Book> books = (List) request.getAttribute("books");%>
            <table id="cssTable" class="table table-bordered table-sm">
                <thead>
                <tr>
                    <th class="text-left">Titre</th>
                    <th class="text-left">Auteur(s)</th>
                    <th class="text-left">Editeur</th>
                    <th class="text-center">Année</th>
                        <% if (isAuthenticated) { %>
                    <th class="text-center">Modifier</th>
                    <th class="text-center">Supprimer</th>
                        <% }%>
                </thead>
                <tbody>
                <% for (Book book : books) { %>
                <tr>
                    <% if (isAuthenticated) { %>
                    <form class="form-horizontal" action="<%= request.getContextPath()+"/updateBook"%>" method="post">
                        <td><input name="title" type="text" value="<%= book.getTitle()%>"/></td>
                        <td style="width: 17.5%"><input name="author" type="text" value="<%= book.getAuthor()%>"/></td>
                        <td style="width: 17.5%"><input name="publisher" type="text" value="<%= book.getPublisher()%>"/>
                        </td>
                        <td style="width: 12.5%"><input name="year" type="number" maxlength="4"
                                                        value="<%= book.getYear()%>"/></td>
                        <td style="width: 10.5%" align="center">
                            <button type="submit" class="btn btn-outline-danger visible" name="id"
                                    value="<%= book.getId() %>"><i class="fas fa-edit"></i></button>
                    </form>
                    </td>
                    <td style="width: 10.5%" align="center">
                        <form class="form-horizontal" action="removeBook" method="post">
                            <button type="submit" class="btn btn-outline-danger visible" name="id"
                                    value="<%= book.getId() %>"><i class="fas fa-trash-alt"></i></button>
                        </form>
                    </td>
                    <% } else { %>
                    <td><%= book.getTitle()%>
                    </td>
                    <td><%= book.getAuthor()%>
                    </td>
                    <td><%= book.getPublisher()%>
                    </td>
                    <td class="text-center"><%= book.getFormattedYear()%>
                    </td>
                    <% }%>
                </tr>
                <% }%>
                </tbody>
            </table>
        </div>
        <div class="text-right">
            <% if (isAuthenticated) { %>
            <a href="<%= request.getContextPath()+"/addBook"%>" class="btn btn-info" role="button">Ajouter un livre</a>
            <% } %>

            <% if (Boolean.TRUE.equals(session.getAttribute("bookAdded"))) { %>
            <% System.out.println("CREATED"); %>
            <% session.setAttribute("bookAdded", false); %>
            <%@ include file="/WEB-INF/modals/confirmation_modal.jsp" %>
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#myModal').modal('show');
                });
            </script>
            <% } %>
            <% if (Boolean.TRUE.equals(session.getAttribute("bookUpdated"))) { %>
            <% System.out.println("UPDATED"); %>
            <% session.setAttribute("bookUpdated", false); %>
            <%@ include file="/WEB-INF/modals/update_modal.jsp" %>
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#myModal').modal('show');
                });
            </script>
            <% } %>
        </div>
    </div>
    <hr>
</div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>
