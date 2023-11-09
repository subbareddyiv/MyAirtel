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
	function setSubmit(SubscriberForm)
	{
		var subname = document.SubscriberForm.subname.value;
		var mobno = document.SubscriberForm.mobno.value;
		var simid = document.SubscriberForm.simid.value;
		var address = document.SubscriberForm.address.value;
		var doctype = document.SubscriberForm.doctype.value;

		if( subname == null || subname == "")
		{
			alert("Subscriber Name should be Mandatory.");
			return false;
		}
		else if( mobno == null || mobno == "")
		{
			alert("Mobile Number should be Mandatory.");
			return false;
		}
		else if( isNaN(mobno) )
		{
			alert("Mobile No. should be Numeric.");
			return false;
		}
		else if( simid == null || simid == "")
		{
			alert("SIM Number should be Mandatory.");
			return false;
		}
		else if( isNaN(simid) )
		{
			alert("SimID should be Numeric.");
			return false;
		}
		else if( address == null || address == "")
		{
			alert("Address should be Mandatory.");
			return false;
		}
		else if( doctype == null || doctype == "")
		{
			alert("Document should be Mandatory.");
			return false;
		}
		else
		{
			document.SubscriberForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(SubscriberForm)
	{
		document.SubscriberForm.reset();
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
			ResultSet rs = stmt.executeQuery("select * from subscriber where id="+id+"");
			rs.next();
%>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Edit User Account</b></u></font></p>
<form action="/airtel/addsubinfo2" method="post" name="SubscriberForm" >
<table align="center">

<tr><td align=right ><b><font size=4>Subscriber Name&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="subname" size="20" style="width: 165" value="<%=rs.getString(2)%>"></td></tr>

<tr><td align=right ><b><font size=4>Mobile Number&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="mobno" size="20" style="width: 165" value="<%=rs.getString(3)%>"></td></tr>

<tr><td align=right ><b><font size=4>SIM ID&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input name="simid" size="20" style="width: 165" value="<%=rs.getString(4)%>"></td></tr>

<tr><td align=right ><b><font size=4>Address&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<textarea name="address" rows="5" cols="18" ><%=rs.getString(5)%></textarea></td></tr>

<tr><td align=right ><b><font size=4>Documents type&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="doctype" size="1" style="width: 165">

<%
Statement stmtt = con.createStatement();
ResultSet rss = stmtt.executeQuery("select * from documents");
while(rss.next())
{
		int docId = rss.getInt(1);
		String docName = rss.getString(2);
		if(rs.getInt(6) == docId)
		{
%>
		<option value="<%=docId%>" selected><%=docName%></option>	
<%
		}
else
		{
	%><option value="<%=docId%>"><%=docName%></option>	
	<%  }
	}	
%>		
	</select></td></tr>

<tr><td align=center colspan="2" ><br><br>
	<input type="submit" value="Update" onClick="return setSubmit(this)" >
	&nbsp;&nbsp;
	<input type="submit" value="Reset" onClick="return setReset(this)" ></td></tr>
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