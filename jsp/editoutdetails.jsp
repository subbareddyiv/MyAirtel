<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.*" %>
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
	function setSubmit(OutletForm)
	{
		var outname = document.OutletForm.outname.value;
		var outarea = document.OutletForm.outarea.value;
		var category = document.OutletForm.category.value;
		var mobno = document.OutletForm.mobno.value;

		if( outname == null || outname == "")
		{
			alert("Outlet Name should be Mandatory.");
			return false;
		}
		else if( outarea == null || outarea == "")
		{
			alert("Outlet Area should be Mandatory.");
			return false;
		}
		else if( category == null || category == "")
		{
			alert("Category should be Mandatory.");
			return false;
		}
		else if( mobno == null || mobno == "")
		{
			alert("Mobile Number should be Mandatory.");
			return false;
		}
		else if( isNaN(mobno) )
		{
			alert("Mobile number  should be Numeric.");
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
<%
			String id = request.getParameter("id");
			System.out.println("+++++++++++++"+id);
			session.setAttribute("id",id);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from outletdetails where id="+id+"");
			rs.next();
%>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Edit User Account</b></u></font></p>
<form action="/airtel/addoutinfo1" method="POST" name="OutletForm" >
<table align="center">

<tr><td align=right><b><font size=4>Outlet Name:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="outname" size="20" style="width: 165" value="<%=rs.getString(2)%>"></td></tr>

<tr><td align=right><b><font size=4>Outlet Area:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="outarea" size="20" style="width: 165" value="<%=rs.getString(3)%>"></td></tr>

<tr><td align=right><b><font size=4>Category Name:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="category" size="1" style="width: 165" >
<%
Statement stmtt = con.createStatement();
ResultSet rss = stmtt.executeQuery("select * from category");
while(rss.next())
{
		int catId = rss.getInt(1);
		String catName = rss.getString(2);
		if(rs.getInt(5) == catId)
		{
%>
		<option value="<%=catId%>" selected><%=catName%></option>	
<%
		}
else
		{
	%><option value="<%=catId%>"><%=catName%></option>	
	<%  }
	}	
%>		
	</select></td></tr>

<tr><td align=right ><b><font size=4>Mobile No:&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="mobno" size="20" style="width: 165" value="<%=rs.getString(4)%>"></td></tr>

<tr><td align=center colspan="2"><br><br>
	<input type="submit" value="Update" onClick="return setSubmit(this)">&nbsp;&nbsp;
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