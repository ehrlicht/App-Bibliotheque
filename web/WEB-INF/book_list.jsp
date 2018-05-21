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
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">
    <div class="table-responsive">
        <% List<Book> books = (List) request.getAttribute("books");%>
        <table class="table table-bordered table-sm">
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
            <% for (Book book : books){ %>
            <tr>
                <td><%= book.getTitle()%></td>
                <td><%= book.getAuthor()%></td>
                <td><%= book.getPublisher()%></td>
                <td><%= book.getPublicationDate()%></td>
                <td>
                    <% if (isAuthenticated) { %>
                        <form class="form-horizontal" action="removeBook" method="post">
                            <button type="submit" class="btn btn-outline-danger visible" name="id" value="<%= book.getId() %>">Supprimer</button>
                        </form>
                    <% } else { %>
                        <button type="button" class="btn btn-outline-danger invisible">Supprimer</button>
                    <% } %>
                </td>
            </tr>
            <% }%>

            </tbody>
        </table>
    </div>
    <div class="text-right">
        <% if (isAuthenticated) { %>
            <a href="<%= request.getContextPath()+"/addBook"%>" class="btn btn-info" role="button">Nouveau livre</a>
        <% } %>
    </div>
</div>
</body>
</html>
