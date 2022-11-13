<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String ccid,vvid,ddate,dd,mm,yy;
float adv,due;
ccid=request.getParameter("cid");
vvid=request.getParameter("vid");
dd=request.getParameter("day");
mm=request.getParameter("mon");
yy=request.getParameter("year");
adv=Float.parseFloat(request.getParameter("advpay"));
due=Float.parseFloat(request.getParameter("duepay"));

try
{
ddate=dd+"/"+mm+"/"+yy;
String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
java.sql.Statement stmt=con.createStatement();
String sql1="insert into allotment values('"+ccid+"', '"+vvid+"','"+ddate+"',"+adv+","+due+")";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New allotment record is inserted</h1><a href="admin.htm">BACK</a>&nbsp<a href="home.htm">HOME</a>
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