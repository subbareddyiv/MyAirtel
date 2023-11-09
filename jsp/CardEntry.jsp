
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
			document.CardForm.planname.focus();
			return false;
		}
		else if( amount == null || amount == "")
		{
			alert("amount should be Mandatory.");
document.CardForm.amount.focus();
			return false;
		}
		else if( isNaN(amount) )
		{
			alert("Amount should be Numeric.");
			document.CardForm.amount.focus();
			return false;
		}
		else if( distprice == null || distprice == "")
		{
			alert("Price should be Mandatory.");
			document.CardForm.distprice.focus();
			return false;
		}
		else if( isNaN(distprice) )
		{
			alert("Dist Price should be Numeric.");
			document.CardForm.distprice.focus();
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
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Card Details Entry Process</b></u></font></p>
<form action="/airtel/cardinfo" method="POST" name="CardForm" >
<table align="center">
<tr><td align=right><b><font size=4>Plan Name :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="planname" size="20" ></td></tr>

<tr><td align=right><b><font size=4>Plan Amount :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="amount" size="20" ></td></tr>

<tr><td align=right><b><font size=4>Distributor Price :&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="distprice" size="20" ></td></tr>

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