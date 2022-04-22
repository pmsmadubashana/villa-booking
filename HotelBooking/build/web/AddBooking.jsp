<%-- 
    Document   : AddBooking
    Created on : Apr 30, 2020, 7:10:12 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seegiri Villa </title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <style>
            .letter{
                color: white;
            }
            
            .tracking-in-expand{-webkit-animation:tracking-in-expand .7s cubic-bezier(.215,.61,.355,1.000) both;animation:tracking-in-expand .7s cubic-bezier(.215,.61,.355,1.000) both}
            
            @-webkit-keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}@keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}
        </style>
    </head>
    <body style="background-image: url('images/89.jpg'); background-repeat: no-repeat;background-size: cover;">
        <%@include file="includes/navbar.jsp"%>
        <div class="container" style="border:0px; background-color: rgba(0,32,61,0.5);margin-top: 3%;margin-bottom: 3%;">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h1 style="color: rgb(255,255,255);text-align: center;" class="tracking-in-expand">Add Booking</h1>
                    <%
                    String error = (String)session.getAttribute("error");
                    String success =(String)session.getAttribute("success");
                    if(error != null)
                    {%>
                        <div class='alert alert-danger alert-dismissible'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                        <h4><i class='icon fa fa-warning'></i> Error!</h4>
                        <p><%=error%></p>
                        </div>
                    <%
                    session.removeAttribute("error");
                    }
                    if(success != null)
                    {%>
                    <div class='alert alert-success alert-dismissible'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                        <h4><i class='icon fa fa-check'></i> Success!</h4>
                        <p><%=success%></p>
                        </div>
                    <%
                    session.removeAttribute("success");
                    }
                    %>

                    <div style="margin-top: 5%;">
                        <form class="form-horizontal" method="POST" action="BookingServlet">
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
              
              <button type="submit" class="btn btn-success btn-flat" name="add"><i class="fa fa-save"></i> Place</button>
              </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
