<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
	function setSubmit(CardForm)
	{
		var planname = document.CardForm.planname.value;
		var amount = document.CardForm.amount.value;
		var distprice = document.CardForm.distprice.value;

		if( planname == null || planname == "")
		{
			alert("Plan Name should be Mandatory.");
			return false;
		}
		else if( amount == null || amount == "")
		{
			alert("amount should be Mandatory.");
			return false;
		}
		else if( isNaN(amount) )
		{
			alert("Amount should be Numeric.");
			return false;
		}
		else if( distprice == null || distprice == "")
		{
			alert("Price should be Mandatory.");
			return false;
		}
		else if( isNaN(distprice) )
		{
			alert("Dist Price should be Numeric.");
			return false;
		}
		else
		{
			document.CardForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(CardForm)
	{
		document.CardForm.reset();
		return false;
	}
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 16px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" class="style1" ><font color="#CC0066"><u>Card Details Update Process</u></font></p>
<form action="/airtel/cardinfo1" method="POST" name="CardForm" >
<table align="center">
<%
			String id = request.getParameter("id");
			System.out.println("+++++++++++++"+id);
			session.setAttribute("id",id);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from cardtype where id="+id+"");
			rs.next();
%>

<tr><td align=right><b><font size=4>Plan Name :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="planname" size="20" value="<%=rs.getString(2)%>"></td></tr>

<tr><td align=right><b><font size=4>Plan Amount :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="amount" size="20" value="<%=rs.getString(3)%>"></td></tr>

<tr><td align=right><b><font size=4>Distributor Price :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="distprice" size="20" value="<%=rs.getString(4)%>"></td></tr>

<tr><td align=center colspan=2><br><br>
	<input type="submit" value="Commit" onClick="return setSubmit(this)" >&nbsp;&nbsp;
	<input type="submit" value="Reset" onClick="return setReset(this)"></td></tr>
</table>
	<input type="hidden" name="eventAction" >
</form>
</td>
</tr>
</table>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>