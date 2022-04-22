<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Users</title>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>
        <div class="container" style="margin-top: 3%">
        <div class="wrapper" >
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>Users Log</h1>
                    <div class="box-header with-border">
              <a href="#addnew" data-toggle="modal" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> New</a>
            </div>
                </section>
                <%
                String re=(String) session.getAttribute("error");
                if(re != null)
                {%>
                    <div class='alert alert-danger alert-dismissible'>
                    <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                    <h4><i class='icon fa fa-warning'></i> Error!</h4>
                        <%=re%>
                    </div>
               <% }
                
                
                %>
                <br>
                <section class="content">
                    <table class="table table-condensed">
                    <thead>
                    <tr>
                    <th>Name</th>
                    <th>E-Mail</th>
                    <th>Tools</th>
                    </tr>
                    </thead>
                    <tbody>
                     <%
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hotel","root","");
                            String query= "SELECT*FROM users";
                            Statement stm = conn.createStatement();
                            ResultSet rs = stm.executeQuery(query);
                            while(rs.next())
                            {
                                %>
                                 <tr>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td>
                                        <button class='btn btn-info btn-sm edit btn-flat' data-id='<%=rs.getInt("id")%>'><i class='fa fa-plus'></i> Update</button>
                                        <button class='btn btn-danger btn-sm remove btn-flat' data-id='<%=rs.getInt("id")%>'><i class='fa fa-edit'></i> Remove</button>
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
                      <%@include file="includes/user_model.jsp"%>
                      
        </div>
        </div>
        
    <script>
    $(function(){
    $(document).on('click', '.edit', function(e){ 
    $('#edit').modal('show');
       var id = $(this).data('id');
    getRow(id);
    e.preventDefault();
    
    });

    $(document).on('click', '.remove', function(e){
    e.preventDefault();
    $('#delete').modal('show');
    var id = $(this).data('id');
    getRow(id);
    });

    });

    function getRow(id){
     
    $.ajax({
    type: 'POST',
    url: 'user_row.jsp',
    data:{"msg": id},
    success: function(data){
      
      var obj = JSON.parse(data);
      $(".catid").val(obj[0].id);
      $("#edit_name").val(obj[0].name);
      $("#edit_mail").val(obj[0].email);
      $("#edit_password").val(obj[0].password); 
    },
    error:function(xhr){
        alert("error!");
    }
    });
    
    }
</script>
    </body>
</html>
