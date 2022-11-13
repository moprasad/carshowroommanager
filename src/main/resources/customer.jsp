<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String ccid,ccname,cadd,coccu ;
double cphno; 
ccid=request.getParameter("cid");
ccname=request.getParameter("cname");
cphno=Double.parseDouble(request.getParameter("phno"));
cadd=request.getParameter("add");
coccu=request.getParameter("occu");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into customer values('"+ccid+"', '"+ccname+"',"+cphno+",'"+cadd+"','"+coccu+"')";
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