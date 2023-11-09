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
.style17 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style23 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 12px; }
-->
</style>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center"><span class="style1 style17"><font color="#CC0066"><u>Category Details</u></font></span></p>


<table width="439" border="1" align="center" bordercolor="#999999">
  <tr>
    <td width="64"><div align="center" class="style23">
      <div align="center">Name</div>
    </div></td>
    <td width="102"><div align="center"><span class="style23">Slab</span></div></td>
    <td width="96"><div align="center"><span class="style23">Target</span></div></td>
    <td width="83"><div align="center"><span class="style23">Incentives</span></div></td>
    <td width="60"><span class="style12"></span></td>
  </tr>
    <%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery("select * from category");
			while(rs.next())
			{
  %>
  <tr><%
  %>
    <td bgcolor="#CCCCCC"><div align="center"><strong><%=rs.getString(2)%></strong></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(3)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(4)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(5)%></div></td>
    <td bgcolor="#CCCCCC"><a href="/airtel/jsp/editcatdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Edit</a>/<a href="/ai	rtel/jsp/deletecatdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Delete</a></td>
  </tr>
  <%}%>
</table>
<p align="center"><font color="red" ><%=message%></font></p></td>
</tr>
<tr>
  <td>&nbsp;</td>
</tr>
<tr>
  <td>&nbsp;</td>
</tr>
</table>
</body>
</html>
