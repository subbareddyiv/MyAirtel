<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
%>


<html>
<head>
<script language="javascript" type="text/javascript" >
	function check()
	{
		PaymentForm.action="/airtel/balance1";
		PaymentForm.submit();

	}
	function checks()
	{
		PaymentForm.action="/airtel/jsp/Balances.jsp";
		PaymentForm.submit();
	}

</script>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Payments</b></u></font></p>
<form action="/airtel/balance1" method="post" name="PaymentForm">
<br><br>
<table align="center">

<tr><td align=right ><b><font size=4 >Outlet Name&nbsp;&nbsp;</b></td>
<%
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select id,name from outletdetails");
%>
	<td align=left >&nbsp;&nbsp;<select name="outid" size="1" style="width: 160">
<%
			while(rs.next())
			{
%>
	<option value="<%=rs.getInt(1)%>" ><%=rs.getString(2)%></option>
<%	}	%>		
	</select></td></tr>

<tr><td align=center colspan=2><p>&nbsp;</p>
  <p>
    <input type="submit" name="button" value="Check Balance" onClick="check()" > 
    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">(<strong>By selecting Outlet</strong>)</font> </p></td></tr>
<tr>
  <td align=center colspan=2>&nbsp;
<input type="submit" name="button2" value="Check All Balances" onClick="checks()"></td>
</tr>
</table>
<p align="center"><font color="red" size="+1"><strong><%=message%></strong></font></p>
	<input type="hidden" name="eventAction" >
</form>
</table>
<br>
</body>
</html>