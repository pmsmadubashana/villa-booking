<%-- 
    Document   : Login
    Created on : Apr 30, 2020, 7:09:43 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('images/unnamed.jpg'); background-repeat: no-repeat;background-size: cover;">
        <%@include file="includes/navbar.jsp"%>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    
                </div>
                <div class="col-md-5 col-sm-12" style="border:0px; background-color: rgba(0,32,61,0.4);margin-top: 3%;margin-bottom: 3%;">
                    <section>
                        <h1 style=" text-align: center; color: white;">Log In</h1>
                    </section>
                    <form method="POST" action="LoginServlet" style=" margin-top: 5%">
                      
                  <div class="form-group">
                    <label for="email" class="col-sm-3 control-label" style=" text-align: center; color: white;">E-Mail</label>

                    <div class="col-sm-9">
                      <input type="email" class="form-control" id="contact" name="email" style="margin-bottom: 3%" required>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="password" class="col-sm-3 control-label" style=" text-align: center; color: white;">Password</label>

                    <div class="col-sm-9">
                      <input type="password" class="form-control" id="date" name="password" style="margin-bottom: 3%" required>
                    </div>
                </div>
                        
                     <button type="submit" class="btn btn-success btn-flat pull-right" name="add" style="margin-bottom: 3%"><i class="fa fa-save"></i> Login</button>
                    </form>
                </div>
                <div class="col-md-1 col-cm-0">
                </div>
            </div>
        </div>
    </body>
</html>
