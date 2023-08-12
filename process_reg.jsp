<%-- 
    Document   : process_reg.jsp
    Created on : 9 May, 2022, 1:43:32 PM
    Author     : sai
--%>

<%@page import="java.sql.*,java.util.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String password=request.getParameter("password");
String mnumber=request.getParameter("mnumber");
String emailid=request.getParameter("emailid");
String dob=request.getParameter("dob");
String address1=request.getParameter("address1");
String address2=request.getParameter("address2");


try
{
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");  
            // creating connection toth data base  
            Connection con = DriverManager.getConnection("jdbc:odbc:EshopDSN", "", "");
           Statement st=con.createStatement();
           int i =st.executeUpdate("insert into reg(fname,lname,password,mnumber,emailid,dob,address1,address2)values('"+fname+"','"+lname+"','"+password+"','"+mnumber+"','"+emailid+"','"+dob+"','"+address1+"','"+address2+"')");
        //out.println("Data is successfully inserted!"+i);
                             out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data is successfully inserted');");
                             out.println("location='login.jsp';");
                             out.println("</script>");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
                              out.println("<script type=\"text/javascript\">");
                             out.println("alert('Data Not Insert');");
                             out.println("location='registration.jsp';");
                             out.println("</script>");
 %>
