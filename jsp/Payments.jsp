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
	function setAmount()
	{
		var amt = document.PaymentForm.amt.value;
		errorText = "";

		if( amt == null || amt == ""){  errorText = errorText + "\n Amount";  }
		if( isNaN(amt) ){	errorText = errorText + "\n Amount must be Numeric";	}

		if (errorText == "")
		{
			document.PaymentForm.eventAction.value = "entry";
			PaymentForm.action="/airtel/processPayments";
			PaymentForm.submit();		
		}
		else
		{
			errorText = "You have left the following fields Blank:\n" + errorText + "\n\nPlease fill these fields in and re-submit the form.";
			alert(errorText);
			return false
		}
	}
	function setBalance()
	{
		PaymentForm.action="/airtel/balance";
		PaymentForm.submit();
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
	<input type="button" name="button" value="commit" onClick="setAmount()" ></td></tr>
</table>
<tr><td align=center colspan=2 >
		<input type="button" value="Balance Enquiry" onClick="setBalance()"></td></tr>
</table>
	<input type="hidden" name="eventAction" >
</form>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>