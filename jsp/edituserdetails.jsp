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
	function setCreate(RegisterForm)
	{
		var name = document.RegisterForm.username.value;
		var pwd = document.RegisterForm.password.value;
		var conpwd = document.RegisterForm.conpassword.value;
		var utype = document.RegisterForm.utype.value;
		if( name == null || name == "" )
		{
			alert("UserName should be Mandatory.");
			return false;
		}
		else if( pwd == null || pwd == "" )
		{
			alert("Password should be Mandatory.");
			return false;
		}
		else if( conpwd == null || conpwd == "" )
		{
			alert("Confirm Password should be Mandatory.");
			return false;
		}
		else if( pwd != conpwd )
		{
			alert("Passwords should be same.");
			return false;
		}
		else if( utype == 2 )
		{
			alert("Choose User Type.");
			return false;
		}
		else
		{
			return true;
		}
	}
	function setReset(RegisterForm)
	{
		document.RegisterForm.reset();
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
			ResultSet rs = stmt.executeQuery("select * from users where id="+id+"");
			rs.next();
%>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Edit User Account</b></u></font></p>
<form action="/airtel/edituser" method="post" name="RegisterForm" >
<table align="center">
	<tr><td align=right ><b>
	<font size=4 >User Name</b>&nbsp;&nbsp;<input type="text" name="username" size="20" value="<%=rs.getString(2)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Password</b>&nbsp;&nbsp;<input type="password" name="password" size="20" value="<%=rs.getString(3)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Confirm Password</b>&nbsp;&nbsp;<input type="password" name="conpassword" size="20" value="<%=rs.getString(3)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >First Name</b>&nbsp;&nbsp;<input type="text" name="first" size="20" value="<%=rs.getString(4)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Last Name</b>&nbsp;&nbsp;<input type="text" name="last" size="20" value="<%=rs.getString(5)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Mobile Number</b>&nbsp;&nbsp;<input type="text" name="mobno" size="20" value="<%=rs.getString(6)%>"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Salary</b>&nbsp;&nbsp;<input type="text" name="salary" size="20" value="<%=rs.getString(7)%>"></td></tr>
	<tr>
	  <td align=right ><b>
	<font size=4 >User Type</b> &nbsp;&nbsp; <select name="utype"><option value="2">Choose User Type</option><%if(rs.getString(8).equals("1")){%><option value="1" selected="selected">Manager</option><option value="0">Operator</option><%}else{%><option value="1" >Manager</option><option value="0" selected="selected">Operator</option><%}%></select></td></tr><tr><td align=center ><br><br>
	<input type="submit" name="submit" value="Update" onClick="return setCreate(this)" >
	&nbsp;&nbsp;
	<input type="submit" value="Reset" onClick="return setReset(this)" ></td></tr>
</table>
</form>
</td>
</tr>
</table>
<br>
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>