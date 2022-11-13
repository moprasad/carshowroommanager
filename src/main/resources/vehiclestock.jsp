<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String vehid,vehname,modno;
int vstock;
vehid=request.getParameter("vid");
vehname=request.getParameter("v_name");
modno=request.getParameter("mno");
vstock=Integer.parseInt(request.getParameter("stock"));
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into vehiclestock values('"+vehid+"', '"+vehname+"','"+modno+"',"+vstock+")";
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