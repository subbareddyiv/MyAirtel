
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
	function setSubmit(DocumentForm)
	{
		var doctype = document.DocumentForm.doctype.value;
		if( doctype == null || doctype == "")
		{
			alert("Document Data should be Mandatory.");
			return false;
		}
		else
		{
			document.DocumentForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(DocumentForm)
	{
		document.DocumentForm.reset();
		return false;
	}
</script>
</head>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Documents Details Entry Process</b></u></font></p>
<form action="/airtel/docinfo" method="POST" name="DocumentForm" >
<table align="center">
<tr><td align=right ><b><font size=4>Document Type&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="doctype" size="20" style="width: 165"></td></tr>

<tr><td align=center colspan=2><br><br>
	<input type="submit" value="Commit" onClick="return setSubmit(this)" >&nbsp;&nbsp;
	<input type="submit" value="Reset" onClick="return setReset(this)"></td></tr>
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