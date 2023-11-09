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
<head>
<script language="javascript" type="text/javascript" >
	function setAmount(EasySaleForm)
	{
		var easyamt = document.EasySaleForm.easyamt.value;
		if( easyamt == null || easyamt == "")
		{
			alert("Recharge Amount should be Mandatory.");
			document.EasySaleForm.easyamt.focus();
			return false;
		}
		else if( isNaN(easyamt) )
		{
			alert("Recharge Amount should be Numeric.");
             document.EasySaleForm.easyamt.focus();
			return false;
		}
		else
		{
			document.EasySaleForm.eventAction.value = "entry";
			return true;
		}
	}
</script>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Easy Rc. Sales Process</b></u></font></p>
<form action="/airtel/easyamtsale" method="post" name="EasySaleForm">
<br><br>
<table align="center">

<tr><td align=right ><b><font size=4 >Outlet Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="outid" size="1" style="width: 160">
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
<tr><td align=right ><b><font size=4 >Recharge Amount:&nbsp;&nbsp;</b></td>
<td align=left >&nbsp;&nbsp;<input type="text" name="easyamt" style="width: 160">

<tr><td align=center colspan=2><br><br>
	<input type="submit" name="submit" value="commit" onClick="return setAmount(this)" ></td></tr>
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