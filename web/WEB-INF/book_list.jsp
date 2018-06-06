<%@ page import="ch.bibliotheque.model.Book" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="menu.jsp" %>
<style>
    input[type="text"], input[type="number"] {
        background: transparent;
        border: 1px solid transparent;
    }

    input[type="text"]:hover, input[type="number"]:hover {
        background: transparent;
        border: 1px solid lightblue;
    }

    input[type="text"]:focus, input[type="number"]:focus {
        background: transparent;
        border: 1px solid lightblue;
    }
</style>
<div>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<%= request.getContextPath()+"/main" %>">Accueil</a></li>
        <li class="breadcrumb-item active">Livres</li>
    </ol>
</div>
<div class="container-fluid">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-12 text-center">
                <h2 id="title">Liste des livres</h2>
                <hr>
            </div>
        </div>
        <div class="table-responsive" style="max-height: 600px; overflow: auto">
            <% List<Book> books = (List) request.getAttribute("books");%>
            <table id="cssTable" class="table table-striped table-sm" style="border-collapse: collapse">
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
                        <td style="width: 20%"><input name="title" class="form-control form-control-sm" type="text"
                                                      required="true" value="<%= book.getTitle()%>"/></td>
                        <td style="width: 17.5%"><input name="author" class="form-control form-control-sm" type="text"
                                                        value="<%= book.getAuthor()%>"/></td>
                        <td style="width: 17.5%"><input name="publisher" class="form-control form-control-sm"
                                                        type="text" value="<%= book.getPublisher()%>"/>
                        </td>
                        <td style="width: 10.5%">
                            <input name="year" centered class="form-control form-control-sm text-center" type="number"
                                   required="true" maxlength="4" min="-999" max="9999" value="<%= book.getYear()%>"/>
                        </td>
                        <td style="width: 10.5%" align="center">
                            <button type="submit" class="btn btn-outline-primary visible" name="id"
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
                    <td style="width: 20%"><%= book.getTitle()%>
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
            <% session.setAttribute("bookAdded", false); %>
            <%@ include file="/WEB-INF/modals/confirmation_modal.jsp" %>
            <script>
                $(window).on('load', function () {
                    $('#myModal').modal('show');
                });
            </script>
            <% } %>
            <% if (Boolean.TRUE.equals(session.getAttribute("bookUpdated"))) { %>
            <% session.setAttribute("bookUpdated", false); %>
            <%@ include file="/WEB-INF/modals/update_modal.jsp" %>
            <script>
                $(window).on('load', function () {
                    $('#myModal').modal('show');
                });
            </script>
            <% } %>
            <% if (Boolean.TRUE.equals(session.getAttribute("bookDeleted"))) { %>
            <% session.setAttribute("bookDeleted", false); %>
            <%@ include file="/WEB-INF/modals/delete_modal.jsp" %>
            <script>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>
