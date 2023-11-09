
<%@ page import="java.util.*" %>

<%
	Collection categorytype = (Collection) request.getAttribute("categorynames");
%>
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
	function setSubmit(OutletForm)
	{
		var outname = document.OutletForm.outname.value;
		var outarea = document.OutletForm.outarea.value;
		var category = document.OutletForm.category.value;
		var mobno = document.OutletForm.mobno.value;

		if( outname == null || outname == "")
		{
			alert("Outlet Name should be Mandatory.");
			document.OutletForm.outname.focus();
			return false;
		}
		else if( outarea == null || outarea == "")
		{
			alert("Outlet Area should be Mandatory.");
			document.OutletForm.outarea.focus();
			return false;
		}
		else if( category == null || category == "")
		{
			alert("Category should be Mandatory.");
			document.OutletForm.category.focus();
			return false;
		}
		else if( mobno == null || mobno == "")
		{
			alert("Mobile Number should be Mandatory.");
			document.OutletForm.mobno.focus();
			return false;
		}
		else if( isNaN(mobno) )
		{
			alert("Mobile number  should be Numeric.");
document.OutletForm.mobno.focus();
			return false;
		}else
		{
			document.OutletForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(OutletForm)
	{
		document.OutletForm.reset();
		return false;
	}
</script>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Outlet Details Entry Process</b></u></font></p>
<form action="/airtel/addoutinfo" method="POST" name="OutletForm" >
<table align="center">

<tr><td align=right><b><font size=4>Outlet Name:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="outname" size="20" style="width: 165"></td></tr>

<tr><td align=right><b><font size=4>Outlet Area:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="outarea" size="20" style="width: 165"></td></tr>

<tr><td align=right><b><font size=4>Category Name:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="category" size="1" style="width: 165" >
<%
	for(Iterator iter = categorytype.iterator(); iter.hasNext();)
	{
		int catId = Integer.parseInt((String) iter.next());
		String catName = (String) iter.next();
%>
		<option value="<%=catId%>" ><%=catName%></option>
<%
	}	
%>		
	</select></td></tr>

<tr><td align=right ><b><font size=4>Mobile No:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="mobno" size="20" style="width: 165"></td></tr>

<tr><td align=center colspan="2"><br><br>
	<input type="submit" value="commit" onClick="return setSubmit(this)">&nbsp;&nbsp;
	<input type="submit" value="Reset" onClick="return setReset(this)"></td></tr>
</table>
	<input type="hidden" name="eventAction">
</form>
</td>
</tr>
</table>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>