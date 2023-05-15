<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%
String id=request.getParameter("Id");
String email=request.getParameter("email");
String status="Cancel";

try
{
	
     Connection con=ConnectionProvider.getCon();
       Statement st=con.createStatement();
       ResultSet rs=st.executeQuery("update cart* set status='"+status+"' where product_id='"+id+"'and email='"+email+"',and address is  not null");
       response.sendRedirect("odersRecived.jsp?msg-cancel");     	 
}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("odersRecived.jsp?msg-wrong"); 
}

%>