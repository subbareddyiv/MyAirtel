<%@ page import="java.util.*" %>

<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		Collection outnames = (Collection) request.getAttribute("outletnames");
%>


<html>
<head>
<script language="javascript" type="text/javascript" >
	function setAmount(PaymentForm)
	{
		var amt = document.PaymentForm.amt.value;
		if( amt == null || amt == "")
		{
			alert("Amount should be Mandatory.");
			return false;
		}
		else if( isNaN(amt) )
		{
			alert("Recharge Amount should be Numeric.");
			return false;
		}
		else
		{
			document.PaymentForm.eventAction.value = "entry";
			return true;
		}
	}
</script>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Payments Process</b></u></font></p>
<form action="/airtel/processPayments" method="post" name="PaymentForm">
<br><br>
<table align="center">

<tr><td align=right ><b><font size=4 >Outlet Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="outid" size="1" style="width: 160">
<%
	for(Iterator iter = outnames.iterator(); iter.hasNext();)
	{
		int outid = Integer.parseInt((String) iter.next());
		String outletName = (String) iter.next();
%>
		<option value="<%=outid%>" ><%=outletName%></option>
<%
	}	
%>		
	</select></td></tr>
<tr><td align=right ><b><font size=4 >Paid Amount:&nbsp;&nbsp;</b>
<td align=left >&nbsp;&nbsp;<input type="text" name="amt" style="width: 160"></td></tr>

<tr><td align=center colspan=2><br><br>
	<input type="submit" name="submit" value="commit" onClick="return setAmount(this)" ></td></tr>
</table>
	<input type="hidden" name="eventAction" >
</form>
<tr><td align=center colspan=2 >
	<form action="/airtel/balance.jsp" method="post" >
		<input type="submit" value="Balance Enquiry" ></td></tr>
	</form>
</td>
</tr>
</table>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>