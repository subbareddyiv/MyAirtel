
<%
		String message = "";
		if( request.getAttribute("register") != null )
		{
			message = (String) request.getAttribute("register");
		}
%>

<html>
<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 14px;
}
-->
</style>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Stock Details Entry Process</b></u></font></p>
<form  method="POST" >
<table align="center">
<tr><td><a href="/airtel/simstock" > <b>SIM cards Stock</b></a></td></tr>
<tr><td><a href="EasyStock.jsp" ><b>Easy Rc. Stock</b></a></td></tr>
<tr><td><a href="/airtel/paperstock" ><b>Paper Rc. Stock</b></a></td></tr>
<tr>
  <td>&nbsp;</td>
</tr>
<tr>
  <td><a href="/airtel/stockreportprocess1" class="style1" >View Total Stock</a></td>
</tr>
</table>
<p>&nbsp;</p>
</form>
</td>
</tr>
</table>
<br>
<p  align="center"><font color="magenta" ><%=message%></font></p>
</body>
</html>