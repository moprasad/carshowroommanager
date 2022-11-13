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
String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
java.sql.Statement stmt=con.createStatement();
String sql1="insert into salary values('"+empid+"', '"+salmon+"','"+salyear+"',"+tamt+",'"+ddate+"')";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New salary Record is inserted</h1><a href="admin.htm">BACK</a>&nbsp<a href="home.htm">HOME</a>
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
