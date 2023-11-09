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
.style17 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center"><span class="style1 style17"><font color="#CC0066"><u>Subscriber Details</u></font></span></p>


<table width="680" border="1" align="center">
  <tr>
    <td width="142"><div align="center"><strong><span class="style16">Name</span></strong></div></td>
    <td width="94"><strong>Mobile  </strong></td>
    <td width="106"><div align="center"><strong><span class="style16">Sim ID </span></strong></div></td>
    <td width="125"><div align="center"><strong><span class="style16">Address</span></strong></div></td>
    <td width="105"><div align="center"><strong><span class="style16">Document</span></strong></div></td>
    <td width="68"><span class="style12"></span></td>
  </tr>
    <%
	System.out.println("@@@@@@@@@@@@@@@@");
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery("select * from subscriber");
			if(rs.isBeforeFirst())
			{

			while(rs.next())
			{
  %>
  <tr>
    <td bgcolor="#CCCCCC"><%=rs.getString(2)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(3)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(4)%></td>
    <td bgcolor="#CCCCCC"><%=rs.getString(5)%></td>
<%	
Statement stmtt = con.createStatement();
String x = "select * from documents where id="+rs.getString(6)+"";
System.out.println("Query is"+x);
ResultSet rss = stmtt.executeQuery(x);
if(rss.next()){
%>
    <td bgcolor="#CCCCCC"><%=rss.getString(2)%></td>
	<%}%>
    <td bgcolor="#CCCCCC"><a href="/airtel/jsp/editsubdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Edit</a>/<a href="/airtel/jsp/deletesubdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Delete</a></td>
  </tr>
  <%}}%>
</table>
<p align="center"><font color="red" ><%=message%></font></p>
</td>
</tr>
</table>
</body>
</html>
