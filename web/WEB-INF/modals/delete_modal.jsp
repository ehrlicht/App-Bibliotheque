<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updated">Livre supprimé</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <h6>Le livre a été supprimé.</h6>
            </div>
            <div class="modal-footer">
                <form method="get" action="<%=request.getContextPath()%>/showBooks">
                <button type="submit" class="btn btn-secondary" data-dismiss="modal">Ok</button>
                </form>
            </div>
        </div>
    </div>
</div>