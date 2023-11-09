<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
		String name = request.getAttribute("username").toString();
		String fname = request.getAttribute("fname").toString();
		String lname = request.getAttribute("lname").toString();
		String mobno = request.getAttribute("mobno").toString();
		String salary = request.getAttribute("salary").toString();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>

<html>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>User Information Report on <%=sdf.format(date)%></b></u></font></p>
<table align="center">
	<tr><td align=right >User Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=name%></td></tr>

	<tr><td align=right >User First Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=fname%></td></tr>

	<tr><td align=right >User Last Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=lname%></td></tr>

	<tr><td align=right >Mobile Number&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=mobno%></td></tr>

	<tr><td align=right >Salary&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=salary%></td></tr>
</table>
</td>
</tr>
</table>
</body>
</html>		