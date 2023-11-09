<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
		String subname = request.getAttribute("name").toString();
		String submobile = request.getAttribute("mobile").toString();
		String subsimcode = request.getAttribute("simcode").toString();
		String subaddress = request.getAttribute("address").toString();
		String subdocs = request.getAttribute("docs").toString();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>

<html>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Subscriber Information Report on <%=sdf.format(date)%></b></u></font></p>
<table align="center">
	<tr><td align=right >Subscriber Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=subname%></td></tr>

	<tr><td align=right >Subscriber Mobile Number&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=submobile%></td></tr>

	<tr><td align=right >Subscirber SIM ID&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=subsimcode%></td></tr>

	<tr><td align=right >Subscriber Address&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=subaddress%></td></tr>

	<tr><td align=right >Submitted Document Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=subdocs%></td></tr>
</table>
</td>
</tr>
</table>
</body>
</html>		