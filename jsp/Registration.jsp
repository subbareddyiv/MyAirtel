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
	function setCreate(RegisterForm)
	{
		var name = document.RegisterForm.username.value;
		var pwd = document.RegisterForm.password.value;
		var conpwd = document.RegisterForm.conpassword.value;
		var utype = document.RegisterForm.utype.value;
		if( name == null || name == "" )
		{
			alert("UserName should be Mandatory.");
document.RegisterForm.username.focus();
			return false;
		}
		 if( pwd == null || pwd == "" )
		{
			alert("Password should be Mandatory.");
			document.RegisterForm.password.focus();
			return false;
		}
		 if( conpwd == null || conpwd == "" )
		{
			alert("Confirm Password should be Mandatory.");
			document.RegisterForm.conpassword.focus();
			return false;
		}
		 if( document.RegisterForm.first.value=="" )
		{
			alert("Please enter the First Name");
            document.RegisterForm.first.focus();
			return false;
		}

 if( document.RegisterForm.last.value=="" )
		{
			alert("Please enter the Last Name");
            document.RegisterForm.last.focus();
			return false;
		}


		 if(document.RegisterForm.mobno.value=="" )
		{
			alert("Please enter the mobile number");
            document.RegisterForm.mobno.focus();
			return false;
		}
         if(isNaN(document.RegisterForm.mobno.value))
		{
			alert("Please enter valid number only");
            document.RegisterForm.mobno.focus();
			return false;
		}
if(document.RegisterForm.mobno.value.length!=10)
		{
			alert("Please enter valid number only");
            document.RegisterForm.mobno.focus();
			return false;
		}

		 if(document.RegisterForm.salary.value=="" )
		{
			alert("Please enter the Salary");
            document.RegisterForm.salary.focus();
			return false;
		}
         if(isNaN(document.RegisterForm.salary.value))
		{
			alert("Please enter number only");
            document.RegisterForm.salary.focus();
			return false;
		}


	 if( utype == 2 )
		{
			alert("Choose User Type.");
			document.RegisterForm.utype.focus();
			return false;
		}
		
		return true;
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
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>New User Account</b></u></font></p>
<form action="/airtel/newuser" method="post" name="RegisterForm" >
<table align="center">
	<tr><td align=right ><b>
	<font size=4 >User Name</b>&nbsp;&nbsp;<input type="text" name="username" size="20" ></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Password</b>&nbsp;&nbsp;<input type="password" name="password" size="20" ></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Confirm Password</b>&nbsp;&nbsp;<input type="password" name="conpassword" size="20" ></td></tr>
	<tr><td align=right ><b>
	<font size=4 >First Name</b>&nbsp;&nbsp;<input type="text" name="first" size="20" ></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Last Name</b>&nbsp;&nbsp;<input type="text" name="last" size="20" ></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Mobile Number</b>&nbsp;&nbsp;<input type="text" name="mobno" size="20"></td></tr>
	<tr><td align=right ><b>
	<font size=4 >Salary</b>&nbsp;&nbsp;<input type="text" name="salary" size="20" ></td></tr>
	<tr>
	  <td align=right ><b>
	<font size=4 >User Type</b> &nbsp;&nbsp; <select name="utype"><option value="2">Choose User Type</option><option value="1">Manager</option><option value="0">Operator</option></select></td></tr>
	<tr><td align=center ><br><br>
	<input type="submit" name="submit" value="Create" onClick="return setCreate(this)" >&nbsp;&nbsp;
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