<%@ page import="java.util.*" %>

<%
		int simcredit = Integer.parseInt( (request.getAttribute("sim").toString()) );
		int easycredit = Integer.parseInt( (request.getAttribute("easy").toString()) );
		int papercredit = Integer.parseInt( (request.getAttribute("paper").toString()) );
		int totalcredit = Integer.parseInt( (request.getAttribute("total").toString()) );
		Date date = new Date();
%>

<html>

<font color=green><h1> <center>WELCOME TO AIRTEL PREPAID MANAGEMENT </h1></center></font>
<br><br><br>
<body bgcolor=lightyellow >
<center><u><b><font color="#990033" size="5" face="Geneva, Arial, Helvetica, sans-serif">Subscriber Information </font></b></u>
<form >
<br>
<table>
	<tr><td align=left ><strong><font face="Verdana, Arial, Helvetica, sans-serif">Name :&nbsp;&nbsp;</font></strong></td>
	<td align=right ><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;<%=subname%></font></strong></td>
	</tr>

	<tr><td align=left ><strong><font face="Verdana, Arial, Helvetica, sans-serif">Moblie Number :&nbsp;&nbsp;</font></strong></td>
	<td align=right ><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;<%=mobileno%></font></strong></td>
	</tr>
	
	<tr><td align=left ><strong><font face="Verdana, Arial, Helvetica, sans-serif">Sim ID :&nbsp;&nbsp;</font></strong></td>
	<td align=right ><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;<%=simid%></font></strong></td>
	</tr>
	
	<tr><td align=left ><strong><font face="Verdana, Arial, Helvetica, sans-serif">Address :&nbsp;&nbsp;</font></strong></td>
	<td align=right ><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;<%=address%></font></strong></td>
	</tr>
	
	<tr><td align=left ><strong><font face="Verdana, Arial, Helvetica, sans-serif">Proof Documnets :&nbsp;&nbsp;</font></strong></td>
	<td align=right ><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;<%=document%></font></strong></td>
	</tr>
</table>
</form>
</center>
</body>
</html>
		