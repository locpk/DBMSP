<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%

try{
    
    String command = request.getParameter("q");
    String sel_cus = "select * from customer limit 200";
    String sel_bill = "select * from bill limit 200";
    String sel_emp = "select * from employee limit 200";
    String sel_bl = "select * from customer_bl limit 200";
    ResultSet rs = null;
    PreparedStatement ps = null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/bay_flower","root","375421");
    if(command.equalsIgnoreCase("temp")){
    	 ps = con.prepareStatement(sel_emp);
         rs = ps.executeQuery();
         if(!rs.next()){
             out.println("no records.");
         }
            else{
         	   while(true){
             %>
            
                 <tr>
                     <td><%=rs.getString(1)%></td>
                     <td><%=rs.getString(2)%></td>
                     <td><%=rs.getString(3)%></td>
                     <td><%=rs.getString(4)%></td>
                     <td><%=rs.getString(5)%></td>
                     <td><%=rs.getString(6)%></td>
                 </tr>
            
            
            <%
            rs.next();}
            }
    }
    else if(command.equalsIgnoreCase("tcus")){
   	 ps = con.prepareStatement(sel_cus);
     rs = ps.executeQuery();
     if(!rs.next()){
         out.println("no records.");
     }
        else{
     	   while(true){
         %>
        
             <tr>
                 <td><%=rs.getString(1)%></td>
                 <td><%=rs.getString(2)%></td>
                 <td><%=rs.getString(3)%></td>
                 <td><%=rs.getString(4)%></td>
                 <td><%=rs.getString(5)%></td>
                 <td><%=rs.getString(6)%></td>
                 <td><%=rs.getString(7)%></td>
             </tr>
        
        
        <%
        rs.next();}
        }
}
    else if(command.equalsIgnoreCase("tbill")){
      	 ps = con.prepareStatement(sel_bill);
        rs = ps.executeQuery();
        if(!rs.next()){
            out.println("no records.");
        }
           else{
        	   while(true){
            %>
           
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                </tr>
           
           
           <%
           rs.next();}
           }
   }
    else if(command.equalsIgnoreCase("tbl")){
     	 ps = con.prepareStatement(sel_bl);
       rs = ps.executeQuery();
       if(!rs.next()){
           out.println("no records.");
       }
          else{
       	   while(true){
           %>
          
               <tr>
                   <td><%=rs.getString(1)%></td>
                   <td><%=rs.getString(2)%></td>
               </tr>
          
          
          <%
          rs.next();}
          }
  }
    
    
    
}catch(Exception e){
    
    
}

%>
