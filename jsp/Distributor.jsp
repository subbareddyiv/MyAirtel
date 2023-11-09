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
	function setSubmit(DistributorForm)
	{
		var distcode = document.DistributorForm.distcode.value;
		var glcode = document.DistributorForm.glcode.value;
		var region = document.DistributorForm.region.value;
		var district = document.DistributorForm.district.value;
		var hub = document.DistributorForm.hub.value;
		var address = document.DistributorForm.address.value;

		if( distcode == null || distcode == "")
		{
			alert("Distributor Code should be Mandatory.");
            document.DistributorForm.distcode.focus();
			return false;
		}
		else if( glcode == null || glcode == "")
		{
			alert("Distributor GLCode should be Mandatory.");
			  document.DistributorForm.glcode.focus();
			return false;
		}
		else if( region == null || region == "")
		{
			alert("Region should be Mandatory.");
			document.DistributorForm.region.focus();
			return false;
		}
		else if( district == null || district == "")
		{
			alert("District should be Mandatory.");
			document.DistributorForm.district.focus();
			return false;
		}
		else if( hub == null || hub == "")
		{
			alert("Hub Name should be Mandatory.");
document.DistributorForm.hub.focus();
			return false;
		}
		else if( address == null || address == "")
		{
			alert("Address should be Mandatory.");
			document.DistributorForm.address.focus();
			return false;
		}
		else
		{
			document.DistributorForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(DistributorForm)
	{
		document.DistributorForm.reset();
		return false;
	}
</script>
<style type="text/css">
<!--
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 18px;
}
.style2 {
	font-size: 14px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>
</head>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" class="style1" ><font color="#CC0066"><u>Distributor Details</u></font></p>
<form action="/airtel/distinfo" method="POST" name="DistributorForm" >
<table width="199" align="center">

<tr>
  <td colspan="2" align=right><div align="center"><span class="style2"><a href="NewDistributor.jsp">Add New Distributor</a></span> </div></td>
	</tr>
<tr>
  <td colspan="2" align=right>&nbsp;</td>
</tr>
<tr>
<td colspan="2" align=right><div align="center"><span class="style2"><a href="EditDistributor.jsp">Edit Distributor</a></span> </div></td></tr>
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