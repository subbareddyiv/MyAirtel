
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
%>

<html>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Stock Report </b></u></font></p>
<form action="./stockreportprocess" thod="post" name="StockReportForm"><br>
<table align="center">
<tr><td align=center colspan=2><br><br>
	<input type="submit" name="generate" value="Generate" >&nbsp;&nbsp;&nbsp;
	<input type="submit" value="Exit" onClick="return setExit(this)" ></td></tr>
</table>
	<input type="hidden" name="eventAction" >
</form>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</center>
</body>
</html>		