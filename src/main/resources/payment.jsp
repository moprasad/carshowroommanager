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
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into payment values('"+ccid+"', '"+bill+"','"+ttax+"',"+total+","+pay+",'"+pdate+"')";
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