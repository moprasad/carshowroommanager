<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String cname,mod_no,col,mil;
float price;
cname=request.getParameter("com_name");
mod_no=request.getParameter("modelno");
col=request.getParameter("color");
mil=request.getParameter("milage");
price=Float.parseFloat(request.getParameter("price"));
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into vehiclemaster values('"+cname+"', '"+mod_no+"','"+col+"','"+mil+"',"+price+")";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New vehicle Record is inserted</h1><a href="admin.htm">BACK</a>&nbsp<a href="home.htm">HOME</a>
<%
}
catch(Exception  ex)
{
%>
<%=ex.getMessage()%>
<%
}
%>
</body>
</html>
