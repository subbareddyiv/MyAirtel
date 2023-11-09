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
<p align="center"><span class="style1 style17"><font color="#CC0066"><u>Competitive Details</u></font></span></p>


<table width="705" border="1" align="center" bordercolor="#E6E6FA">
  <tr>
    <td width="68"><div align="center" class="style23">
      <div align="center">Date</div>
    </div></td>
    <td width="187"><div align="center"><span class="style23">Outlet Name </span></div></td>
    <td width="43"><div align="center"><span class="style23">Airtel</span></div></td>
    <td width="47"><div align="center"><span class="style23">Idea</span></div></td>
    <td width="50"><div align="center"><span class="style23">Hutch</span></div></td>
    <td width="52"><div align="center"><span class="style23">BSNL</span></div></td>
    <td width="82"><div align="center" class="style23">
      <div align="center">Reliance</div>
    </div></td>
    <td width="58"><div align="center" class="style23">
      <div align="center">Indicom</div>
    </div></td>
    <td width="60"><span class="style12"></span></td>
  </tr>
    <%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery("select * from competative");
			while(rs.next())
			{
  %>
  <tr><%
  Statement stmtt = con.createStatement();
  String qry = "select name from outletdetails where id = "+rs.getInt(9);
  System.out.println("+++++"+qry);
  ResultSet date = stmtt.executeQuery(qry);
  date.next();
  String date1 = rs.getString(2);
  System.out.println("-*---------"+date);
  String y = date1.substring(0,4);
  String m = date1.substring(6,7);
  String d = date1.substring(9,10); 
  int datee = Integer.parseInt(d);
  if(datee<=9){ d = "0"+d;}
  int month = Integer.parseInt(m);
  if(month<=9){ m = "0"+m;}
 
  String datte = d + "/" + m + "/" + y;
      
  %>
    <td bgcolor="#CCCCCC"><strong><%=datte%></strong></td>
    <td bgcolor="#CCCCCC"><%=date.getString(1)%></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(3)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(4)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(5)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(6)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(7)%></div></td>
    <td bgcolor="#CCCCCC"><div align="center"><%=rs.getString(8)%></div></td>
    <td bgcolor="#CCCCCC"><a href="/airtel/jsp/editcompdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Edit</a>/<a href="/ai	rtel/jsp/deletecompdetails.jsp?id=<%=rs.getInt(1)%>" class="style8">Delete</a></td>
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
