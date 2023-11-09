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
	function setSubmit(SubcriberReportForm)
	{
		var mobno = document.SubcriberReportForm.mobno.value;

		if( mobno == null || mobno == "" )
		{
			alert("mobile number should be Mandatory.");
			return false;
		}
		else if( isNaN(mobno) )
		{
			alert("Mobile Nuimber should be Numeric.");
			return false;
		}
		else
		{
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
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Subscriber Report </b></u></font></p>
<form action="/airtel/subinforeportprocess" name="SubcriberReportForm" method="post" ><br>
<table align="center">
	<tr><td align=right ><b><font size=4 >Enter Subscriber's Mobile Number&nbsp;&nbsp;</b></td> 
	<td align=left >&nbsp;&nbsp;
	  <input type="text" name="mobno"></td></tr>
<tr><td align=center colspan=2><br><br>
	<input type="submit" name="generate" value="Generate" onClick="return setSubmit(this)" ></td></tr>
</table>
	<input type="hidden" name="eventAction" >
</form>
</td>
</tr>
</table>
<br>
<p align="center" ><font size = 4 color="red" ><%=message%></font></p>
</body>
</html>