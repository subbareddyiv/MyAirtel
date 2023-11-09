<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
		Collection simvector = (Collection) request.getAttribute("simstock");
		Collection easyvector = (Collection) request.getAttribute("easystock");
		Collection papervector = (Collection) request.getAttribute("paperstock");	
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>
<html>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Stock Information Report on <%=sdf.format(date)%></b></u></font></p>
<table align="center">
	<tr><td align=left colspan=3>SimCard Stock :&nbsp;&nbsp;</td></tr>
<%
	for(Iterator iter = simvector.iterator(); iter.hasNext();)
	{
		String cardType = (String) iter.next();
		int count = Integer.parseInt((String) iter.next());
%>
	<tr><td>&nbsp;</td>
	<td align=right >&nbsp;&nbsp;<%=cardType%></td>
	<td align=left >&nbsp;&nbsp;<%=count%></td></tr>
<%
	}
%>
	<tr><td colspan=3>&nbsp;</td></tr>
	
	<tr><td align=left colspan=3>Easy Rc. Stock Amount :&nbsp;&nbsp;</td></tr>
<%
	for(Iterator iter = easyvector.iterator(); iter.hasNext();)
	{
		int amount = Integer.parseInt((String) iter.next());
%>
	<tr><td>&nbsp;</td>
    <td align=right >&nbsp;&nbsp;<%=amount%></td>
	<td>&nbsp;</td></tr>
<%
	}
%>
	<tr><td colspan=3>&nbsp;</td></tr>

	<tr><td align=left colspan=3>Paper Rc. cards Stock :&nbsp;&nbsp;</td></tr>
<%
	for(Iterator iter = papervector.iterator(); iter.hasNext();)
	{
		String cardType = (String) iter.next();
		int count = Integer.parseInt((String) iter.next());
%>
	<tr><td>&nbsp;</td>
	<td align=right >&nbsp;&nbsp;<%=cardType%></td>
	<td align=left >&nbsp;&nbsp;<%=count%></td></tr>
<%
	}
%>

</table>
</td>
</tr>
</table>
</body>
</html>		