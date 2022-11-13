<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String empid,salmon,salyear,ddate,day,mon,year;
float tamt;
empid=request.getParameter("eid");
salmon=request.getParameter("smon");
salyear=request.getParameter("syear");
tamt=Float.parseFloat(request.getParameter("amount"));
day=request.getParameter("dday");
mon=request.getParameter("dmon");
year=request.getParameter("dyear");
try
{
ddate=day+"/"+mon+"/"+year;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into salary values('"+empid+"', '"+salmon+"','"+salyear+"',"+tamt+",'"+ddate+"')";
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
