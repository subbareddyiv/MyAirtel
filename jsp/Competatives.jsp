
<%@ page import="java.util.*" %>

<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		Collection outtypes = (Collection) request.getAttribute("outnames");
%>


<html>
<head>
<script language="javascript" type="text/javascript" >
	function setSubmit(CompetativeForm)
	{
		var outid = document.CompetativeForm.outid.value;
		var day = document.CompetativeForm.day.value;
		var month = document.CompetativeForm.month.value;
		var year = document.CompetativeForm.year.value;
		var airtel = document.CompetativeForm.airtel.value;
		var hutch = document.CompetativeForm.hutch.value;
		var idea = document.CompetativeForm.idea.value;
		var reliance = document.CompetativeForm.reliance.value;
		var indicom = document.CompetativeForm.outid.value;
		var bsnl = document.CompetativeForm.bsnl.value;

		if( outid == null || outid == "")
		{
			alert("Outlet Name should be Mandatory.");
			return false;
		}
		else if( day == "Day" || day == "")
		{
			alert("Day should be Mandatory.");
			return false;
		}
		else if( month == "Month" || month == "")
		{
			alert("Month should be Mandatory.");
			return false;
		}
		else if( year == "Year" || year == "")
		{
			alert("Year should be Mandatory.");
			return false;
		}
		else if( airtel == null || airtel == "")
		{
			alert("Airtel Data should be Mandatory.");
			return false;
		}
		else if( isNaN(airtel) )
		{
			alert("Airtel Data should be Numeric.");
			return false;
		}
		else if( hutch == null || hutch == "")
		{
			alert("Hutch Data should be Mandatory.");
			return false;
		}
		else if( isNaN(hutch) )
		{
			alert("Hutch Data should be Numeric.");
			return false;
		}
		else if( idea == null || idea == "")
		{
			alert("Idea Data should be Mandatory.");
			return false;
		}
		else if( isNaN(idea) )
		{
			alert("Idea Data should be Numeric.");
			return false;
		}
		else if( reliance == null || reliance == "")
		{
			alert("Reliance Data should be Mandatory.");
			return false;
		}
		else if( isNaN(reliance) )
		{
			alert("Reliance Data should be Numeric.");
			return false;
		}
		else if( bsnl == null || bsnl == "")
		{
			alert("BSNL Data should be Mandatory.");
			return false;
		}
		else if( isNaN(bsnl) )
		{
			alert("BSNL Data should be Numeric.");
			return false;
		}
		else
		{
			document.CompetativeForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(CompetativeForm)
	{
		document.CompetativeForm.reset();
		return false;
	}
</script>
</head>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Competitive Details Entry Process</b></u></font></p>
<form action="/airtel/addcompinfo" method="POST" name="CompetativeForm" >
<table width="324" align="center">

<tr>
  <td width="117" align=right ><b><font size=4>Outlet Name&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<select name="outid" size="1" style="width: 165">
			<option value="" >------  Choose Outlet  ------</option>
<%
	for(Iterator iter = outtypes.iterator(); iter.hasNext();)
	{
		int outId = Integer.parseInt((String) iter.next());
		String outName = (String) iter.next();
%>
		<option value="<%=outId%>" ><%=outName%></option>
<%
	}
%>
	</select></td></tr>

<tr>
  <td align=right ><b>Date<font size="1">(</font></b><font size="2">DD/MM/YY</font><b><font size="1">)</font>&nbsp;&nbsp; </b></td>
  <td width="61" align=left >&nbsp;
    <label>
	<font face="Verdana">
    <input name="day" type="text" id="day" value="Day" size="2" maxlength="2">
    /</label></td>
  <td width="52" align=left ><input name="month" type="text" id="month" onMouseOver="setTipOn('Enter Month')" onMouseOut="setTipOff()" value="Month" size="2" maxlength="2">
  /</td>
  <td width="59" align=left ><input name="year" type="text" id="year" onMouseOver="setTipOn('Enter Year')" onMouseOut="setTipOff()" value="Year" size="3" maxlength="4"></td>
</tr>
<tr><td align=right ><b><font size=4>Airtel&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="airtel" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>Idea&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="idea" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>Hutch&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="hutch" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>BSNL&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="bsnl" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>Reliance&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="reliance" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>TATA Indicom&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="indicom" size="20" style="width: 165"></td></tr>


<tr><td align=center colspan=4><br><br>
	<input type="submit" name="submit" value="commit" onClick="return setSubmit(this)" >&nbsp;&nbsp;
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