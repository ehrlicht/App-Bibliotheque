<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="menu.jsp" %>
<div>
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="<%= request.getContextPath()+"/main" %>">Accueil</a></li>
        <li class="breadcrumb-item active">Connexion</li>
    </ol>
</div>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-12 text-center">
            <h2 id="title">Connexion</h2>
            <hr>
        </div>
    </div>
    <form class="form-horizontal" action="<%=request.getContextPath()%>/authenticate" method="post">
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <div class="form-group has-danger">
                    <label>Identifiant</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="user" required autofocus>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <div class="form-group">
                    <label>Mot de passe</label>
                    <div class="input-group">
                        <input type="password" class="form-control" name="pwd" required>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center align-items-center">
            <div class="col-xl-4 col-12">
                <button type="submit" class="btn btn-outline-secondary btn-block"><i class="fa fa-sign-in"></i>Se
                    connecter
                </button>
            </div>
        </div>
    </form>
    <br>
    <% if ((boolean) request.getAttribute("loginError")) { %>
    <%@include file="alerts/authentication_error_alert.jsp" %>
    <% } %>
</div>
</body>
</html>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
        crossorigin="anonymous"></script>