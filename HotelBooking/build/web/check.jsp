<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String contact =(String)request.getParameter("Contact");
            String sta= "";
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/hotel","root","");
                            String query= "SELECT*FROM booking WHERE contact='"+contact+"'";
                            Statement stm = conn.createStatement();
                            ResultSet rs = stm.executeQuery(query);
                            if(rs.next())
                            { 
                                sta=rs.getString("state");
                                
                            }
                        }
                        catch(Exception e)
                        {
                            System.out.println(e);
                        }
                        
                        session.setAttribute("message",sta);
        response.sendRedirect("status.jsp");
        %>
    </body>
</html>
