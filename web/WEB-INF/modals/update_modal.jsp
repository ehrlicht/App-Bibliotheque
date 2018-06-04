<%--
  Created by IntelliJ IDEA.
  User: mgtub
  Date: 5/27/2018
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updated">Livre mis à jour</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h6>Le livre a été mis à jour avec succès.</h6>
            </div>
            <div class="modal-footer">
                <form method="get" action="showBooks">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Ok</button>
                </form>
            </div>
        </div>
    </div>
</div>

