<%@ page import="java.sql.*"%>
<%
String uname=request.getParameter("user");
String pass1=request.getParameter("pass1");
String pass2=request.getParameter("pass2");
String hint=request.getParameter("hint");
String type=request.getParameter("role");
if(uname!=null)
{
	try{
	if(pass1.equals(pass2))
	{
		
		String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
		Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
		java.sql.Statement stmt=con.createStatement();
			String sql="select * from security Where username='"+uname+"'";
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next())
			{
				%> UserId/Login Already Created.....<br>Chhose Another Login ID <a href="admin.htm">BACK</a>
					<br>
			<%
			}
			else
			{
			sql="insert into security values('"+uname+"','"+pass1+"','"+hint+"','"+type+"')";
			stmt.executeUpdate(sql);
			%>User Created.....<a href="admin.htm">BACK</a>
			<%}
	}
	
	else
	{
		%><b>Password MisMatch........Try Again</b><%
		
	}

	}	
	catch(Exception ex)
	{ 
	
	%>
	<%=ex.getMessage()%>
	<%
	}
}
else
{
%>
	Invalid User Name <br>
<%
}
%>