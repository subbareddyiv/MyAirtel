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
<%
			String id = request.getParameter("id");
			System.out.println("+++++++++++++"+id);
			session.setAttribute("id",id);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from Documents where id="+id+"");
			rs.next();
%>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Edit User Account</b></u></font></p>
<form action="/airtel/docinfo1" method="POST" name="DocumentForm" >
<table align="center">
<tr><td align=right ><b><font size=4>Document Type&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="doctype" size="20" style="width: 165" value="<%=rs.getString(2)%>"></td></tr>

<tr><td align=center colspan=2><br><br>
	<input type="submit" value="Update" onClick="return setSubmit(this)" >&nbsp;&nbsp;
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