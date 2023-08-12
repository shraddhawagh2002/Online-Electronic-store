<%-- 
    Document   : process_login.jsp
    Created on : 9 May, 2022, 11:08:30 PM
    Author     : sai
--%>

<%@page import="java.sql.*,java.util.*"%>
<%
String emailid=request.getParameter("emailid"); 

String password=request.getParameter("password"); 
String msg;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
Connection con = DriverManager.getConnection("jdbc:odbc:EshopDSN", "", "");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from reg where emailid='"+emailid+"' and password='"+password+"'"); 
try{
	rs.next();
	        if(rs.getString("password").equals(password) && rs.getString("emailid").equals(emailid)) 
			{     
                              session.setAttribute("regid",rs.getString("regid"));
                              //session.setAttribute("username",rs.getString("user_id"));
                              session.setAttribute("emailid",emailid);                           
                             out.println("<script type=\"text/javascript\">");
                             out.println("alert('Login Successful');");
                             out.println("location='user/index.jsp';");
                             out.println("</script>");
			} 
                       
}
catch (Exception e) {
e.printStackTrace();
}
 out.println("<script type=\"text/javascript\">");
 out.println("alert('Email or password incorrect');");
 out.println("location='login.jsp';");
 out.println("</script>");
              
                      

%>
