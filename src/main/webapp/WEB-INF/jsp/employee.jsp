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
String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
java.sql.Statement stmt=con.createStatement();
String sql1="insert into employee values('"+empid+"', '"+empname+"','"+edept+"',"+esal+","+econ+",'"+eadd+"','"+jdate+"')";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New employee record is inserted</h1><a href="admin.htm">BACK</a>
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
