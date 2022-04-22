<div class="modal fade" id="activate">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Processing...</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="BookingAcceptServlet">
                <input type="hidden" class="catid" id="catid" name="id">
                <div class="text-center">
                    <p>Accepting....</p>
                    <h2 class="bold catname"></h2>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="delete"><i class="fa fa-trash"></i> Proceed</button>
              </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="remove">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Processing...</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="BookingRejectServlet">
                <input type="hidden" class="catid" id="catid" name="id">
                <div class="text-center">
                    <p>Are You Sure You Want To Reject?</p>
                    <h2 class="bold catname"></h2>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Reject</button>
              </form>
            </div>
        </div>
    </div>
</div>