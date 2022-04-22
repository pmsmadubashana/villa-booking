<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body class="hold-transition">
        <%
            String res =(String)session.getAttribute("useremail");
            if(res != null)
            {
        %>
        <%@include file="includes/navbar.jsp" %>
        <div class="container"style="margin-top: 3%">
        <div class="wrapper" >
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>Booking Activation Log</h1>
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
                    <div class="box-header with-border">
            </div>
                </section>
                <br>
                <section class="content">
                    <table class="table table-condensed">
                    <thead>
                    <tr>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Checkin</th>
                    <th>Checkout</th>
                    <th>Adults</th>
                    <th>Child</th>
                    <th>Rooms</th>
                    <th>Tools</th>
                    </tr>
                    </thead>
                    <tbody>
                     <%
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hotel","root","");
                            String query= "SELECT*FROM booking WHERE state='pending'";
                            Statement stm = conn.createStatement();
                            ResultSet rs = stm.executeQuery(query);
                            while(rs.next())
                            {
                                %>
                                 <tr>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("contact")%></td>
                                    <td><%=rs.getString("checkin")%></td>
                                    <td><%=rs.getString("checkout")%></td>
                                    <td><%=rs.getString("adults")%></td>
                                    <td><%=rs.getString("child")%></td>
                                    <td><%=rs.getInt("rooms")%></td>
                                    <td>
                                        <button class='btn btn-info btn-sm edit btn-flat' data-id='<%=rs.getInt("id")%>'><i class='fa fa-plus'></i> Accept</button>
                                        <button class='btn btn-danger btn-sm remove btn-flat' data-id='<%=rs.getInt("id")%>'><i class='fa fa-edit'></i> Reject</button>
                                    </td>
                                </tr>
                     <%
                            }
                        }
                        catch(Exception ex){}
                      %>
                   
                    </tbody>
                    </table>
                </section>
            </div>
                      <%@include  file="includes/activation_modal.jsp" %>
                      
        </div>
        </div>
    <script>
        var bid=null;
    $(function(){
    $(document).on('click', '.edit', function(e){ 
    $('#activate').modal('show');
       var id = $(this).data('id');
    getRow(id);
    e.preventDefault();
    
    });

    $(document).on('click', '.remove', function(e){
    e.preventDefault();
    $('#remove').modal('show');
    var id = $(this).data('id');
    getRow(id);
    });

    });

    function getRow(id){
     
    $.ajax({
    type: 'POST',
    url: 'Booking_row.jsp',
    data:{"msg": id},
    success: function(data){
      
      var obj = JSON.parse(data);
      $(".catid").val(obj[0].id);
      $("#edit_name").val(obj[0].name);
      $("#edit_time").val(obj[0].time);
      $("#edit_for").val(obj[0].redio);
      $("#edit_date").val(obj[0].date);
      $("#edit_place").val(obj[0].location);
      $("#edit_people").val(obj[0].people);
      $("#edit_contact").val(obj[0].contact);
      
    },
    error:function(xhr){
        alert("error!");
    }
    });
    
    }
</script>
<%
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
%>
</body>
</html>
