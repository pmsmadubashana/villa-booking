<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Add -->
<div class="modal fade" id="addnew">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Add New User</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="RegistratioServlet">
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label">Name</label>

                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">E-Mail</label>

                    <div class="col-sm-9">
                      <input type="email" class="form-control" id="contact" name="email" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Password</label>

                    <div class="col-sm-9">
                      <input type="password" class="form-control" id="date" name="password" required>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-primary btn-flat" name="add"><i class="fa fa-save"></i> Save</button>
            </form>
            </div>
        </div>
    </div>
</div>

<!-- Edit -->
<div class="modal fade" id="edit">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Edit User</b></h4>
            </div>
            <div class="modal-body">
              <form id="edit" class="form-horizontal" method="POST" action="UserUpdateServlet">
                <input type="hidden" class="catid" id="catid" name="id">
                <div class="form-group">
                    <label for="edit_name" class="col-sm-3 control-label">Name</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_name" name="name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_mail" class="col-sm-3 control-label">E-Mail</label>
                    <div class="col-sm-9">
                      <input type="text" class="form-control" id="edit_mail" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="edit_password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-9">
                      <input type="password" class="form-control" id="edit_password" name="password">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="edit"><i class="fa fa-check-square-o"></i> Update</button>
              </form>
            </div>
        </div>
    </div>
</div>

<!-- Delete -->
<div class="modal fade" id="delete">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Processing...</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="UserDeleteServlet">
                <input type="hidden" class="catid" id="catid" name="id">
                <div class="text-center">
                    <p>Delete User....</p>
                    <h2 class="bold catname"></h2>
                </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-danger btn-flat" name="delete"><i class="fa fa-trash"></i> Proceed</button>
              </form>
            </div>
        </div>
    </div>
</div>
