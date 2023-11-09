<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style4 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; }
.style7 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 18px; font-weight: bold; }
.style8 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
-->
</style>
</head>
<body>
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p align="center" class="style7">User Information </p>
<p>&nbsp;</p>
<table width="632" border="1" align="center" bordercolor="#999999">
  <tr>
    <td bgcolor="#CCCCCC" width="196"><div align="center" class="style4">User Name </div></td>
    <td bgcolor="#CCCCCC" width="167"><div align="center" class="style4">Password</div></td>
    <td bgcolor="#CCCCCC" width="166"><div align="center" class="style4">Mobile No. </div></td>
    <td bgcolor="#CCCCCC" width="136"><div align="center" class="style4">Designation</div></td>
    <td bgcolor="#CCCCCC" width="104">&nbsp;</td>
  </tr>
  <%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery("select * from users");
			while(rs.next())
			{
  %>
  <tr>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
    <td><%=rs.getString(6)%></td>
    <td><% 
	if(rs.getString(8).equals("1")) 
	{out.println("Manager");}else{out.println("Operator");}%></td>
    <td><a href="jsp/edituserdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Edit</a>/<a href="jsp/deleteuserdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Delete</a></td>
  </tr>
  <%}%>
</table>
</td>
</tr>
</table>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>
