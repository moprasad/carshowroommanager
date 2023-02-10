<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String ccid,bill,ttax,pdate,dd,mm,yy;
float total,pay;
ccid=request.getParameter("cid");
bill=request.getParameter("billno");
ttax=request.getParameter("tax");
total=Float.parseFloat(request.getParameter("tamt"));
pay=Float.parseFloat(request.getParameter("payamt"));
dd=request.getParameter("day");
mm=request.getParameter("mon");
yy=request.getParameter("year");
try
{
pdate=dd+"/"+mm+"/"+yy;
String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
java.sql.Statement stmt=con.createStatement();
String sql1="insert into payment values('"+ccid+"', '"+bill+"','"+ttax+"',"+total+","+pay+",'"+pdate+"')";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New payment Record is inserted</h1><a href="admin.htm">BACK</a>
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