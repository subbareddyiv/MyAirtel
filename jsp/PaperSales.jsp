
<%@ page import="java.util.*" %>

<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		Collection outnames = (Collection) request.getAttribute("outletnames");
		Collection cardtypes = (Collection) request.getAttribute("cardtypes");
%>

<html>
<head>
<script language="javascript" type="text/javascript" >
	function setSubmit(PaperSaleForm)
	{
		var count = document.PaperSaleForm.count.value;
		if( count == null || count == "" )
		{
			alert("Sold Cards Number should be Mandatory.");
			document.PaperSaleForm.count.focus();
			return false;
		}
		else if( isNaN(count) )
		{
			alert("Sold Cards Number should be Numeric.");
			document.PaperSaleForm.count.focus();
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
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Paper Cards Sales Process</b></u></font></p>
<form action="/airtel/paperrcsale" method="POST" name="PaperSaleForm" >
<br><br>	
<table align="center">
<tr><td align=right ><b><font size=4 >Plan Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="cardid" size="1" style="width: 160">
                <%
	for(Iterator iter = cardtypes.iterator(); iter.hasNext();)
	{
		int cardid = Integer.parseInt((String) iter.next());
		String cardtype = (String) iter.next();
%>
                <option value="<%=cardid%>" ><%=cardtype%></option>
                <%
	}	
%>
              </select></td></tr>

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

<tr><td align=right><b><font size=4>No Of Sold Cards&nbsp;&nbsp;</b></td>
<td align=left >&nbsp;&nbsp;<input type="text" name="count" style="width: 160">

<tr><td align=center colspan=2><br><br>
	<input type="submit" name="submit" value="commit" onClick="return setSubmit(this)"></td></tr>
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