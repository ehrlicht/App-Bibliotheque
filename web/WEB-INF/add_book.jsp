<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <% if((Boolean)request.getAttribute("errorMessage")){ %>
        <%@include file="error-pages/add_book_error.jsp"%>
        <%}%>
    </form>
</div>
</body>
</html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>
