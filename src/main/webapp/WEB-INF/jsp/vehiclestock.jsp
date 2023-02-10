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
	String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
	Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
	java.sql.Statement stmt=con.createStatement();
String sql1="insert into vehiclestock values('"+vehid+"', '"+vehname+"','"+modno+"',"+vstock+")";
stmt.executeUpdate(sql1);
stmt.executeUpdate("commit");
stmt.close();
con.close();
%>
<h1>Thank you ! New vehicle Record is inserted</h1><a href="admin.htm">BACK</a>
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