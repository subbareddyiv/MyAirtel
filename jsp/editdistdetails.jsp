<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
			System.out.println("Message::"+message);
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
			return false;
		}
		else if( glcode == null || glcode == "")
		{
			alert("Distributor GLCode should be Mandatory.");
			return false;
		}
		else if( region == null || region == "")
		{
			alert("Region should be Mandatory.");
			return false;
		}
		else if( district == null || district == "")
		{
			alert("District should be Mandatory.");
			return false;
		}
		else if( hub == null || hub == "")
		{
			alert("Hub Name should be Mandatory.");
			return false;
		}
		else if( address == null || address == "")
		{
			alert("Address should be Mandatory.");
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
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<%
			String id = request.getParameter("id");
			System.out.println("+++++++++++++"+id);
			session.setAttribute("id",id);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from distributor where id="+id+"");
			rs.next();
%>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Edit User Account</b></u></font></p>
<form action="/airtel/distinfo1" method="POST" name="DistributorForm" >
<table align="center">

<tr><td align=right><b><font size=4>Distributor Code&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="distcode" size="20" value="<%=rs.getString(2)%>"></td></tr>

<tr><td align=right><b><font size=4>GL Code&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="glcode" size="20" value="<%=rs.getString(3)%>"></td></tr>

<tr><td align=right><b><font size=4>Region Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="region" size="20" value="<%=rs.getString(5)%>"></td></tr>

<tr><td align=right><b><font size=4>District Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="district" size="20" value="<%=rs.getString(6)%>"></td></tr>

<tr><td align=right><b><font size=4>Hub Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="hub" size="20" value="<%=rs.getString(7)%>"></td></tr>

<tr><td align=right valign="top" ><b><font size=4>Address&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<textarea name="address" rows="5" cols="15"><%=rs.getString(4)%></textarea></td></tr>

<tr><td align=center colspan="2"><br><br>
	<input type="submit" name="submit" value="Update" onClick="return setSubmit(this)">
	&nbsp;&nbsp;
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