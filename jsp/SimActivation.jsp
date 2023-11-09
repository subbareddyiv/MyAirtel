
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
	function setActivate(SimActivationForm)
	{
		var mobile = document.SimActivationForm.mobile.value;
		if( mobile == null || mobile == "")
		{
			alert("Mobile Number should be Mandatory.");
			document.SimActivationForm.mobile.focus();
			return false;
		}

 if(isNaN(document.SimActivationForm.mobile.value))
		{
			alert("Please enter number only");
            document.SimActivationForm.mobile.focus();
			return false;
		}

		else
		{
			document.SimActivationForm.eventAction.value = "entry";
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
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Sim Activation Process</b></u></font></p>
<form action="/airtel/simactivate" method="POST" name="SimActivationForm" >
<center>
<br><br>
<table>
<tr><td align=right ><b><font size=4>Outlet Name&nbsp;&nbsp;</b></td>
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

<tr><td align=right ><b><font size=4 >Mobile Number&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="mobile" size="20" style="width: 160"></td></tr>

<tr><td align=center colspan=2 ><br><br>
	<input type="submit" value="Activate" onClick="return setActivate(this)" ></td></tr>
	<input type="hidden" name="eventAction" >
</form>
<tr><td align=center colspan=2 >
	<form action="/airtel/subinfo1" method="post" >
		<input type="submit" value="Subscriber Info. Entry" ></td></tr>
	</form>
</table>
</td>
</tr>
</table>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>