<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
		int simcredit = Integer.parseInt( (request.getAttribute("sim").toString()) );
		int easycredit = Integer.parseInt( (request.getAttribute("easy").toString()) );
		int papercredit = Integer.parseInt( (request.getAttribute("paper").toString()) );
		int totalcredit = Integer.parseInt( (request.getAttribute("total").toString()) );
		String outletname = (String) request.getAttribute("name");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
%>

<html>
<style type="text/css">
<!--
.style35 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 13px; }
.style36 {font-size: 13px}
.style37 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Credit Report for <%=outletname%> on <%=sdf.format(date)%></b></u></font></p>
<p align="center" >&nbsp;</p>
<table border="1" align="center" bordercolor="#666666">
  <tr>
    <td align=right ><div align="right"><span class="style35">Type of Credit&nbsp;&nbsp; </span></div></td>
    <td align=left ><span class="style37">&nbsp;&nbsp;Amount</span></td>
  </tr>
	<tr>
      <td align=right ><div align="right"><span class="style35">Sim Cards Credit&nbsp;&nbsp;</span></div></td>
	  <td align=left ><span class="style37">&nbsp;&nbsp;<%=simcredit%></span></td>
	  </tr>
	<tr><td align=right ><div align="right"><span class="style35">Easy Amount Credit&nbsp;&nbsp;</span></div></td>
	<td align=left ><span class="style37">&nbsp;&nbsp;<%=easycredit%></span></td></tr>
	<tr><td align=right ><div align="right"><span class="style35">Paper Rc. Cards Credit&nbsp;&nbsp;</span></div></td>
	<td align=left ><span class="style37">&nbsp;&nbsp;<%=papercredit%></span></td></tr>
	<tr><td colspan="2"><div align="right"><span class="style36"></span></div></td>
	</tr>
	<tr><td align=right ><div align="right"><span class="style35">Total Credit Amount&nbsp;&nbsp;</span></div></td>
	<td align=left ><span class="style37">&nbsp;&nbsp;<%=totalcredit%></span></td></tr>
</table>
</td>
</tr>
</table>
</body>
</html>