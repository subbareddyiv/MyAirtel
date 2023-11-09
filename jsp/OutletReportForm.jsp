<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
		String outname = request.getAttribute("name").toString();
		String outarea = request.getAttribute("area").toString();
		String outcatname = request.getAttribute("catname").toString();
		String outslab = request.getAttribute("slab").toString();
		int outtarget = Integer.parseInt(request.getAttribute("target").toString());
		int outincentives = Integer.parseInt(request.getAttribute("incentives").toString());
		String outmobile = request.getAttribute("mobile").toString();
		String outpbleamt = request.getAttribute("pbleamt").toString();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>

<html>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Outlet Information Report for <%=outname%> on <%=sdf.format(date)%></b></u></font></p>
<table align="center">
	<tr><td align=right >Outlet Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outname%></td></tr>

	<tr><td align=right >Outlet Area&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outarea%></td></tr>

	<tr><td align=right >Outlet Category Name&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outcatname%></td></tr>

	<tr><td align=right >Outlet Slab&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outslab%></td></tr>

	<tr><td align=right >Outlet Target&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outtarget%></td></tr>

	<tr><td align=right >Outlet Incentives :&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outincentives%></td></tr>

	<tr><td align=right >Outlet Mobile Number&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outmobile%></td></tr>

	<tr><td align=right >Outlet Payable Amount&nbsp;&nbsp;</td>
	<td align=left >&nbsp;&nbsp;<%=outpbleamt%></td></tr>	
	
	<tr><td colspan="2">&nbsp;</td></tr>

</table>
</td>
</tr>
</table>
</body>
</html>
		