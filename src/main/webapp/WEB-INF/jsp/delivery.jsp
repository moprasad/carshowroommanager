<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
<%
String ccid,vvid,deldate,dd,mm,yy,dbill;
float dpay,dtamt;
ccid=request.getParameter("cid");
vvid=request.getParameter("vid");
dd=request.getParameter("day");
mm=request.getParameter("mon");
yy=request.getParameter("year");
dbill=request.getParameter("bill");
dpay=Float.parseFloat(request.getParameter("payamt"));
dtamt=Float.parseFloat(request.getParameter("tamt"));
try
{
deldate=dd+"/"+mm+"/"+yy;
String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
java.sql.Statement stmt=con.createStatement();
String sql1="insert into delivery values('"+ccid+"', '"+vvid+"','"+deldate+"','"+dbill+"',"+dpay+","+dtamt+")";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New delivery record is inserted</h1><a href="admin.htm">BACK</a>
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