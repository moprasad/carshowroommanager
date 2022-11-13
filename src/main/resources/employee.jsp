<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String empid,empname,edept,eadd,jdate,dd,mm,yy;
float esal;
double econ;
empid=request.getParameter("eid");
empname=request.getParameter("nemp");
edept=request.getParameter("dept");
esal=Float.parseFloat(request.getParameter("sal"));
econ=Double.parseDouble(request.getParameter("contact"));
eadd=request.getParameter("add");
dd=request.getParameter("jday");
mm=request.getParameter("jmon");
yy=request.getParameter("jyear");
try
{
jdate=dd+"/"+mm+"/"+yy;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into employee values('"+empid+"', '"+empname+"','"+edept+"',"+esal+","+econ+",'"+eadd+"','"+jdate+"')";
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
