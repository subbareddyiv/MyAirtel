<%@ page import="java.util.*" %>

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
	function setSubmit(UserReportForm)
	{
		var name = document.UserReportForm.name.value;

		if( name == null || name == "" )
		{
			alert("name should be Mandatory.");
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
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>User Information Report </b></u></font></p>
<form action="/airtel/usertreportprocess" method="post" name="UserReportForm" >
<table align="center">
	<tr><td align=right><b><font size=4 >User Name&nbsp;&nbsp;</b></td>
	<td><input type="text" name="name" value"name" ></td></tr>
<tr><td align=center colspan=2><br><br>
	<input type="submit" name="generate" value="Generate" onClick="return setSubmit(this)" ></td></tr>
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
		