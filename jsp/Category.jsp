
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
	function setSubmit(CategoryForm)
	{
		var catname = document.CategoryForm.catname.value;
		var slab = document.CategoryForm.slab.value;
		var target = document.CategoryForm.target.value;
		var incentives = document.CategoryForm.incentives.value;

		if( catname == null || catname == "")
		{
			alert("Category Name should be Mandatory.");
			document.CategoryForm.catname.focus();
			return false;
		}
		else if( slab == null || slab == "")
		{
			alert("Slab should be Mandatory.");
				document.CategoryForm.slab.focus();
			return false;
		}
		else if( target == null || target == "")
		{
			alert("Target should be Mandatory.");
				document.CategoryForm.target.focus();
			return false;
		}
		else if( isNaN(target) )
		{
			alert("Target Data should be Numeric.");
			document.CategoryForm.target.focus();
			return false;
		}
		else if( incentives == null || incentives == "")
		{
			alert("Incentives should be Mandatory.");
			document.CategoryForm.incentives.focus();
			return false;
		}
		else if( isNaN(incentives) )
		{
			alert("Incentives Data should be Numeric.");
			document.CategoryForm.incentives.focus();
			return false;
		}
		else
		{
			document.CategoryForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(CategoryForm)
	{
		document.CategoryForm.reset();
		return false;
	}
</script>
</head>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Category Details Entry Process</b></u></font></p>
<form action="/airtel/categoryinfo" method="POST" name="CategoryForm" >
<table align="center">
<tr><td align=right><b><font size=4>Category Name(A/B/C/D)&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="catname" size="20" ></td></tr>

<tr><td align=right><b><font size=4>Slab&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="slab" size="20" ></td></tr>

<tr><td align=right><b><font size=4>Target&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="target" size="20" ></td></tr>

<tr><td align=right><b><font size=4>Incentives&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="incentives" size="20" ></td></tr>

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