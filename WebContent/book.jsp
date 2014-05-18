<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.Connection"%>
<%

try{
    
  
    String ins_book = "INSERT INTO reserve (customer_id,customer_name,room_type,numofRoom,phone,from,to,mesage) VALUES (" + request.getParameter("cus_id") + "," + request.getParameter("cus_name") + "," + request.getParameter("roomtype") + "," + request.getParameter("cus_num") + "," + request.getParameter("cus_phone") + "," + request.getParameter("from") + "," + request.getParameter("to") + "," + request.getParameter("cus_message") + ")";
    Statement st = null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bay_flower","root","375421");
    st.execute(ins_book); 
    
}catch(Exception e){
    
    
}

%>