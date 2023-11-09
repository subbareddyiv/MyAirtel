<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style8 {font-size: 14px}
.style9 {font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif;}
.style11 {font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 16px; }
-->
</style>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
  <p>&nbsp;</p>
  <p align="center"><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>All Outlet Payments</b></u></font></p>
  <p align="center">&nbsp;</p>
  <table width="312" height="57" border="1" align="center" bordercolor="#999999">
  <tr>
    <td width="214"><div align="center" class="style8"><span class="style11">Outlet Name </span></div></td>
    <td width="82"><div align="center" class="style8"><span class="style9">Balance</span></div></td>
  </tr>
  <%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select name,payableAmount from outletdetails");
			while(rs.next())
			{
%>
<tr>
    <td><span class="style9"><%=rs.getString(1)%></span></td>
    <td><div align="center"><%=rs.getString(2)%></div></td>
  </tr>
  <%}%>
</table>
</td>
</tr>
</table>
</body>
</html>
