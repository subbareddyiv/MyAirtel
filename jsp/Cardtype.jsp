
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
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 16px;
}
.style2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
}
.style3 {	font-size: 14px;
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
<p align="center" class="style1" ><font color="#CC0066"><u>Paper Rc.Card &amp; SIM Cards Details </u></font></p>
<form action="/airtel/cardinfo" method="POST" name="CardForm" >
<table width="177" align="center">

<tr>
  <td align=center><span class="style3"><a href="/airtel/jsp/CardEntry.jsp">Add New Card </a></span></td>
</tr>
<tr>
  <td align=center>&nbsp;</td>
</tr>
<tr>
  <td align=center><span class="style3"><a href="/airtel/jsp/EditCard.jsp">View Card Entries </a></span></td>
</tr>

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