
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- Add -->
<div class="modal fade" id="addnew">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title"><b>Add New Booking</b></h4>
            </div>
            <div class="modal-body">
             <form class="form-horizontal" method="POST" action="AdminBookingServlet">
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label letter" >Name</label>

                    <div class="col-sm-6">
                      <input type="text" class="form-control " id="name" name="name" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="contact" class="col-sm-3 control-label letter">Contact</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="contact" name="contact" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="radio" class="col-sm-3 control-label letter">Check In</label>

                    <div class="col-sm-6">
                      <input type="date" class="form-control" id="date" name="checkin" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="date" class="col-sm-3 control-label letter">Check Out</label>

                    <div class="col-sm-6">
                      <input type="date" class="form-control" id="date" name="checkout" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="time" class="col-sm-3 control-label letter">Adults</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="people" name="adults" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="peoples" class="col-sm-3 control-label letter">Childrens</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="people" name="child" required>
                    </div>
                </div>
                            <div class="form-group" style=" margin-bottom: 3%;">
                    <label for="place" class="col-sm-3 control-label letter">Rooms</label>

                    <div class="col-sm-6">
                     <input type="number" class="form-control" id="people" name="rooms" required>
                    </div>
                </div>
            
                    </div>
            <div class="modal-footer">
                              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="add"><i class="fa fa-save"></i> Place</button>
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
              <h4 class="modal-title"><b>Edit Booking</b></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" method="POST" action="BookingUpdateServlet">
                  <input type="hidden" class="catid" id="catid" name="id">
                <div class="form-group">
                    <label for="name" class="col-sm-3 control-label letter" >Name</label>

                    <div class="col-sm-6">
                      <input type="text" class="form-control " id="edit_name" name="name" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="contact" class="col-sm-3 control-label letter">Contact</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="edit_contact" name="contact" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="radio" class="col-sm-3 control-label letter">Check In</label>

                    <div class="col-sm-6">
                      <input type="date" class="form-control" id="edit_checkin" name="checkin" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="date" class="col-sm-3 control-label letter">Check Out</label>

                    <div class="col-sm-6">
                      <input type="date" class="form-control" id="edit_checkout" name="checkout" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="time" class="col-sm-3 control-label letter">Adults</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="edit_adult" name="adults" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="peoples" class="col-sm-3 control-label letter">Childrens</label>

                    <div class="col-sm-6">
                      <input type="number" class="form-control" id="edit_child" name="child" required>
                    </div>
                </div>
                            <div class="form-group" style=" margin-bottom: 3%;">
                    <label for="place" class="col-sm-3 control-label letter">Rooms</label>

                    <div class="col-sm-6">
                     <input type="number" class="form-control" id="edit_rooms" name="rooms" required>
                    </div>
                </div>
             </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> Close</button>
              <button type="submit" class="btn btn-success btn-flat" name="add"><i class="fa fa-save"></i> Place</button>
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
              <form class="form-horizontal" method="POST" action="BookingDeleteServlet">
                <input type="hidden" class="catid" id="catid" name="id">
                <div class="text-center">
                    <p>Complete/Delete Booking....</p>
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
