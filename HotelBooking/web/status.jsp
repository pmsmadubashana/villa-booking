<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Status</title>
        <style>
            .tracking-in-expand{-webkit-animation:tracking-in-expand .7s cubic-bezier(.215,.61,.355,1.000) both;animation:tracking-in-expand .7s cubic-bezier(.215,.61,.355,1.000) both}
            
            @-webkit-keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}@keyframes tracking-in-expand{0%{letter-spacing:-.5em;opacity:0}40%{opacity:.6}100%{opacity:1}}
        </style>
    </head>
    <body style="background-image: url('images/89.jpg'); background-repeat: no-repeat;background-size: cover;">
        <%@include file="includes/navbar.jsp" %>
        <div class="container" style="border:0px; background-color: rgba(0,32,61,0.5);margin-top: 3%;margin-bottom: 3%;">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <h1 style="color: rgb(255,255,255);text-align: center;" class="tracking-in-expand">Check Booking</h1>
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
                    <%}
                    if(success != null)
                    {%>
                    <div class='alert alert-success alert-dismissible'>
                        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                        <h4><i class='icon fa fa-check'></i> Success!</h4>
                        <p><%=success%></p>
                        </div>
                    <%}
                    %>

                    <div style="margin-top: 5%;">
                  <form class="form-horizontal" method="POST" action="check.jsp">
                  <div class="form-group">
                      <label for="peoples" class="col-sm-3 control-label letter" style="color: white;">Contact</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" id="people" name="Contact" required>
                    </div>
                </div>
                    </div>
            <div class="modal-footer">
              
              <button type="submit" class="btn btn-success btn-flat" name="add"><i class="fa fa-save"></i> check</button>
              </form>
                        <%
                        String stat =(String) session.getAttribute("message");
                        if(stat != null)
                        {
                        %><p style="color: white;" class="pull-left"><%=stat%></p>
                        <%}
                        else{
                            %><p style="color: white;" class="pull-left">Please enter your contact Number to check status</p><%   
                        }
                        session.removeAttribute("message"); 
                        %>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
