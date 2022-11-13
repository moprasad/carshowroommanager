<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome to new car zone</title>
</head>
<body>
	<%
		String uname, password, urole;
		uname = request.getParameter("user");
		password = request.getParameter("password");
		urole = request.getParameter("role");
		try {
			String url = "jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
			Connection con = DriverManager.getConnection(url, "drwumvzz_grsadmin", "MyPass@grs@8g");
			java.sql.Statement stmt = con.createStatement();
			String sql = "select * from security Where username='" + uname + "'" + "and password='" + password
					+ "'";
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
	%>
	<h2>logged in successfully!!!</h2>
	<h3>
		<a href="/admin">go to admin page</a>
	</h3>
	<h3>
		<a href="/">home</a>
	</h3>
	<%
		} else {
	%>
	<h2>Invalid user name/password</h2>
	<a href="/userlogin">go back</a>
	<%
		}
		} catch (Exception ex) {
	%>
	<%=ex.getMessage()%>
	<%
		}
	%>
</body>
</html>
