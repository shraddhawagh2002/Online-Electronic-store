<%-- 
    Document   : process_admin_login.jsp
    Created on : 9 May, 2022, 11:31:38 PM
    Author     : sai
--%>

<%@page import="java.sql.*,java.util.*"%>
<%
String emailid=request.getParameter("emailid"); 

String password=request.getParameter("password"); 
if(emailid.equals("shraddha1234@gmail.com") && password.equals("2002")) 
{     
       session.setAttribute("emailid",emailid);
       //session.setAttribute("username",rs.getString("user_id"));
       //session.setAttribute("email_id",email);                           
       out.println("<script type=\"text/javascript\">");
       out.println("alert('Login Successful');");
       out.println("location='Admin/admindashboard.jsp';");
       out.println("</script>");
} 
else
{
      out.println("<script type=\"text/javascript\">");
      out.println("alert('Email or password incorrect');");
      out.println("location='adminlogin.jsp';");
      out.println("</script>");
}                      

%>
