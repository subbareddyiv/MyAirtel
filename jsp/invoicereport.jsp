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
	function setSubmit(SimSaleForm)
	{
		var count = document.SimSaleForm.inno.value;
		if( count == null || count == "" )
		{
			alert("Enter Invoice Number.");
			return false;
		}
		else if( isNaN(count) )
		{
			alert("Invoice Number should be Numeric.");
			return false;
		}
		else
		{
			document.SimSaleForm.eventAction.value = "entry";
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
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Report Based on Invoice</b></u></font></p>
<form action="/airtel/jsp/invoicereportprocess.jsp" method="post" name="SimSaleForm">
<br><br>
<table align="center">

<tr><td align=right ><b><font size=4 >Invoice Number&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="inno" size="1" style="width: 160"></td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td align=center colspan=2><input type="submit" name="button" value="Submit" onClick="return setSubmit(this)"></td></tr>
</table>
<p align="center"><font color="red" size="+1"><strong><%=message%></strong></font></p>
	<input type="hidden" name="eventAction" >
</form>
</table>
<br>
</body>
</html>