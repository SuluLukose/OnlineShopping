<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String SecurityQuestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");

String address="";
String city="";
String state="";
String Contry="";
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement Ps=con.prepareStatement("insert into users0 values(?,?,?,?,?,?,?,?,?,?)");
	//System.out.println(Ps);
	Ps.setString(1, name);
	Ps.setString(2, email);
	Ps.setString(3,mobileNumber );
	Ps.setString(4, SecurityQuestion);
	Ps.setString(5, answer);
	Ps.setString(6, password);
	Ps.setString(7, address);
	Ps.setString(8, city);
	Ps.setString(9, state);
	Ps.setString(10, Contry);
	
	Ps.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
	}
catch(Exception e)
{     
	System.out.println(e);
	response.sendRedirect("signup.jsp?msg=invalid");
	
}
%>