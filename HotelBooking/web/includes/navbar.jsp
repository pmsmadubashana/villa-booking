<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Seegiri Villa</a>
    </div>
    <ul class="nav navbar-nav pull-right">
        <li><a href="aboutUs.jsp">ABOUT US</a></li>
      <li><a href="AddBooking.jsp">BOOK</a></li>
      <li><a href="status.jsp">BOOKING STATUS</a></li>
      <%
          String mail=(String) session.getAttribute("useremail");
          if( mail!= null)
          {
      %>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">${useremail}
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="home.jsp">BOOKING</a></li>
          <li><a href="ValidBooking.jsp">VALIDATED BOOKING</a></li>
          <li><a href="AdminUser.jsp">ADMIN USER</a></li>
          
          <li><a href="logout.jsp">LOGOUT</a></li>
        </ul>
      </li>
      <%}
         else{%>
      <li><a href="Login.jsp">LOGIN</a></li>
      <%}
      %>
    </ul>
  </div>
</nav>
        
    </body>
</html>
