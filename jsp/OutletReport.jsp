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
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Outlet Report </b></u></font></p>
<form action="./outletreportprocess" method="post" name="OutletReportForm"><br>
<table align="center">
	<tr><td align=right><b><font size=4 >Outlet Name&nbsp;&nbsp;</b></td>
	<td align=left>&nbsp;&nbsp;<select name="outid" size="1">
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
<tr><td align=center colspan=2><br><br>
	<input type="submit" name="generate" value="Generate" ></td></tr>
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
		