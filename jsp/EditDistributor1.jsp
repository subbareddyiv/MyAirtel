<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
			System.out.println("Message::"+message);
		}
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; }
.style12 {font-size: 10}
.style16 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; }
.style1 {font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p>
<p align="center"><span class="style1"><font color="#CC0066"><u>Distributor Details</u></font></span></p>
<table width="645" border="1" align="center">
  <tr>
    <td width="57"><div align="center"><strong><span class="style16">Code</span></strong></div></td>
    <td width="78"><div align="center"><strong><span class="style16">GL Code </span></strong></div></td>
    <td width="103"><div align="center"><strong><span class="style16">Address</span></strong></div></td>
    <td width="96"><div align="center"><strong><span class="style16">Region</span></strong></div></td>
    <td width="101"><div align="center"><strong><span class="style16">District</span></strong></div></td>
    <td width="83"><div align="center"><strong><span class="style16">Hub</span></strong></div></td>
	<td width="81"><span class="style12"></span></td>
  </tr>
    <%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery("select * from distributor");
			while(rs.next())
			{
  %>
  <tr>
    <td bgcolor="#CCCCCC"><%=rs.getString(2)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(3)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(4)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(5)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(6)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(7)%></td>
    <td bgcolor="#CCCCCC"><a href="jsp/editdistdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Edit</a>/<a href="jsp/deletedistdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Delete</a></td>
  </tr>
  <%}%>
</table>
<p>&nbsp;</p>
<p align="center"><font color="red" ><%=message%></font></p>
</td>
</tr>
</table>
</body>
</html>
