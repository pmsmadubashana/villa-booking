<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.sql.*"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.parser.ParseException"%>

<%
    
    JSONArray list = new JSONArray();
    Connection conn;
    PreparedStatement pst;
    ResultSet rs;
    
    Class.forName("com.mysql.jdbc.Driver");
    String id = request.getParameter("msg");
    
    conn= DriverManager.getConnection("jdbc:mysql://127.0.0.1/hotel","root","");
    
    pst= conn.prepareStatement("select * from booking where id=?");
    pst.setString(1,id);
    rs = pst.executeQuery();
    
    if(rs.next() == true)
    {
        int ids = rs.getInt("id");
        String name = rs.getString("name");
        String contact = rs.getString("contact");
        String checkin = rs.getString("checkin");
        String checkout = rs.getString("checkout");
        String adults = rs.getString("adults");
        String child = rs.getString("child");
        String rooms = rs.getString("rooms");
        
        JSONObject obj = new JSONObject();
        
        obj.put("id", ids);
        obj.put("name", name);
        obj.put("contact",contact);
        obj.put("checkin", checkin);
        obj.put("checkout", checkout);
        obj.put("adults", adults);
        obj.put("child", child);
        obj.put("rooms", rooms);
        list.add(obj);
    }
    out.println(list.toJSONString());
    out.flush();
%>