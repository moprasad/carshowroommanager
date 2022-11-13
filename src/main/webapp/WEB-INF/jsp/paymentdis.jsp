<%@ page import="java.sql.*"%>
<html>
<head>
<title>welcome in new car zone
</title>
<style> 
body {
margin:0, 0, 0, 0px;
}
a{
font-family:"verdana";
font-size:"15";
text-color:"#ff0000";
text-decoration:"none";
}
a:hover{
color:"#00ff00";
}
.my{
background-color="#d4d4d4";
}
</style>
</head>
<body bgcolor="#ffffff">
<table border="1" width="900"align="center"  cellspacing="0" cellpadding="0" >
<tr>
<td><img src="lpm.jpeg"  width="198" height="139" ></td>
<td align="center"  width="504" bgcolor="#d356d2"><font face="comic sans ms" size="6" color="#00ff00"><b>HYUNDAI CARSHOWROOM AUTOMATION SYSTEM</FONT>
</td>
<td ><img src="b.jpeg"WIDTH="186" height="135">
</td>
</tr>
</table>
<table border="0" width="900" align="center" cellspacing="0" cellpadding="0" >
<tr>
<td><img src="2012_SONATA_Static_728x90.jpg" height="90" width="900">
</td>
</tr>
</table>

<table border="0" width="904" align="center" cellspacing="2" cellpadding="2" >
        <tr>
        <td class="my" align="center"><a href="/"><b>home</a></td>
        <td class="my" align="center"><a href="/aboutus"><b>about us</a></td>
        <td class="my" align="center"><a href="/contactus"><b>contact us</a></td>
        <td class="my" align="center"><a href="/news"><b>news</a></td>
        <td class="my" align="center"><a href="/userlogin"><b>administrator</a></td>
        <td class="my" align="center"><a href="/photogallery"><b>photo gallery</a></td>
        </tr>
        </table>
<table border="0" width="900" align="center" cellspacing="0" cellpadding="0" >
<tr>
<td width="15%">
    <table border="0"  cellspacing="2">
  <tr><td class="my" align="center"> <a href="/vehiclestockdisplay"><b>vehiclestock</a></font></td></tr>
    <tr><td class="my" align="center"> <a href="/customerdisplay"><b>customer</a></font></td></tr>
    <tr><td class="my" align="center"> <a href="/salarydisplay"><b>salary</a></font></td></tr>
    <tr><td class="my" align="center"><a href="/employeedisplay"><b>employee</a></font></td></tr>
    <tr><td class="my" align="center"><a href="/bookingdisplay"><b>booking</a></font></td></tr>
    <tr><td class="my" align="center"><a href="/allotmentdisplay"><b>allotment</a></font></td></tr>
    <tr><td class="my" align="center"><a href="/deliverydisplay"><b>delivery</a></font></td></tr>
    <tr><td class="my" align="center"><a href="/paymentdisplay"><b>payment</a></font></td></tr>
    <tr><td  align="center"><img src="lft-promo.gif" height="220" width="130">
    </td></tr>  
    <tr>
    <td bgcolor="#888888" align="center"><font face="verdana" size="3" color="#ffffff"><b><U>LATEST NEWS</font>
    </td>
    </tr>
    <tr height="200">
    <td bgcolor="#888888" align="center"><font face="verdana" size="2" color="#ff0000"><marquee behaviour="scroll" scrollamount="2" direction="up">The huge discount on new Hyundai Trajet. For more information <a href="www.hyundai.com">CLICK HERE <img src="hyundai trajet.jpg" width="125" height="93"></a></marquee></font></td></tr>
    
    </table>
</td>
<td valign="top"><table border="1" cellpadding="0" cellspacing="0" width="765" height="675" bgcolor="#d4d4d4"><tr><td valign="top">
  <table border="0" cellpadding="0" cellspacing="0"  style="border-collapse: collapse" bordercolor="#111111" width="740" id="AutoNumber1">
  <tr>
    <td width="100%">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
      <tr>
        <td width="100%">
        <p align="center"><b><font color="#800080" size="4"><%="Payment Entry Inforamtion"%></font></b></td>
      </tr>
      <tr>
        <td width="100%">
        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#800080" width="100%" id="AutoNumber3">
          <tr>
            <td width="100%">&nbsp;</td>
          </tr>
          <tr>
            <td width="100%">
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#333399" width="100%" id="AutoNumber4">
              <tr>
                <td width="16%"><b><font color="#008000" size="1" face="Verdana">cust_id</font></b></td>
                <td width="16%"><b><font color="#008000" size="1" face="Verdana">bill_no </font></b></td>
                <td width="16%"><b><font color="#008000" size="1" face="Verdana">tax </font></b></td>
                <td width="16%"><b><font color="#008000" size="1" face="Verdana">tot_amt</font></b></td>
<td width="18%"><b><font color="#008000" size="1" face="Verdana">payable_amt</font></b></td>
<td width="18%"><b><font color="#008000" size="1" face="Verdana">pdate</font></b></td>
                </tr>
            </table>
            <%
	try{
		String url="jdbc:mysql://103.228.112.200:3306/drwumvzz_wp2021";
		Connection con=DriverManager.getConnection(url,"drwumvzz_grsadmin","MyPass@grs@8g");
		java.sql.Statement stmt=con.createStatement();
		String sql="select * from payment";	
		ResultSet rs=stmt.executeQuery(sql);
		if(rs!=null)
		{
			while(rs.next())
			{%>
			<table  border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr> 
				<td width="16%"><font face="Verdana" size="1"><%=rs.getString("cust_id")%></font></td>
				<td width="16%"><font face="Verdana" size="1"><%=rs.getString("bill_no")%></font></td>
				<td width="16%"><font face="Verdana" size="1"><%=rs.getString("tax")%></font></td>
				<td width="16%"><font face="Verdana" size="1"><%=rs.getString("tot_amt")%></font></td>
<td width="18%"><font face="Verdana" size="1"><%=rs.getString("payable_amt")%></font></td>
<td width="18%"><font face="Verdana" size="1"><%=rs.getString("pdate")%></font></td>
				
			</tr>
			<tr> 
				<td width="20%"><font face="Verdana" size="1">&nbsp;</font></td>
				<td width="20%"><font face="Verdana" size="1">&nbsp;</font></td>
				<td width="20%"><font face="Verdana" size="1">&nbsp;</font></td>
				<td width="20%"><font face="Verdana" size="1">&nbsp;</font></td>
				<td width="20%"><font face="Verdana" size="1">&nbsp;</font></td>				
			</tr>
			</table>
		<%}
		rs.close();
		stmt.close();
		con.close();	
	}
	else
	{
		%> <table width="100%"><tr><td><font face="Verdana" size="2"><%="No Record Found......."%></font></td></tr></table><%
	}
	}
	catch(Exception e)
	{%>
		<%=e.getMessage()%>
	<%}%>
			</td>
    	</tr>    
         
            
            </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>

<table border="0" width="905" align="center"bgcolor="#5235ff" cellspacing="0" cellpadding="0">

<tr>
<td align="center"><font face="verdana" size="2" color="#ffffff"><b><u>Your feedback will help us improve. Please give us your feedback.
</td>
</tr> 
<tr>
<td align="center" ><BR><font face="verdana" size="2" color="#ffffff"><b>COPYRIGHT 2011 WWW.HYUNDAI.COM.  ALL RIGHTS RESERVED.UNAUTHORISED ACCESS IS PROHIBITED.</FONT>
</td>
</tr>
</table>



<table border="0" width="905" align="center" bgcolor="#5235ff" cellspacing="0" cellpadding="0" >
<tr>
<td ><a href="www.facebook.com"><img src="2p.jpeg" width="50" height="70"></a>
</td>
<td><a href="www.twitter.com"><img src="5a.jpeg" width="50"height="70"></a>
</td>

<td ><a href="www.hyundai.com"><img src="oop.jpeg" width="230" height="70"></a>
</td>
<td><img src="01.jpg" width="185"height="70">
</td>

<td><img src="03.jpg" width="185"height="70">
</td>
<td><img src="05.jpg" width="185"height="70">
</td>
</tr>
</table>

</body>
</html>