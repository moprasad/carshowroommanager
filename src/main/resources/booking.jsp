<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String ccid,vvid,vvname,book,bdate,dd,mm,yy;
ccid=request.getParameter("cid");
vvid=request.getParameter("vid");
vvname=request.getParameter("vname");
book=request.getParameter("bookno");
dd=request.getParameter("bday");
mm=request.getParameter("bmon");
yy=request.getParameter("byear");

try
{
bdate=dd+"/"+mm+"/"+yy;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:anand");
Statement stmt=con.createStatement();
String sql1="insert into booking values('"+ccid+"', '"+vvid+"','"+vvname+"','"+book+"','"+bdate+"')";
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