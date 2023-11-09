<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<html>
<head>
<title>LogOut</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/table.css" rel="stylesheet" type="text/css">

<script language="javascript" type="text/javascript" >
	function setConfirmSignOut(SignOutForm)
	{
		document.SignOutForm.eventAction.value = "signout";
		return true;
	}
</script>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%
	  response.setHeader("Cache-Control","no-cache"); 
	  response.setHeader("Cache-Control","no-store");
	  response.setDateHeader("Expires", 0); 
	  response.setHeader("Pragma","no-cache"); 
	  String username = (String)session.getAttribute("username");
	  if (username == null  )
	  {
		  request.setAttribute("Error", "Session has ended.  Please login.");
		  RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		  rd.forward(request, response);
      }
%>

<form name="SignOutForm" method="POST" action="/airtel/login" >

  <table border="0" cellpadding="0" cellspacing="0" class="signout">
    <tr align="center" valign="top" > 
      <td height="421" bgcolor="#FFFFFF"> <table border="0" cellpadding="0" cellspacing="0" >
          <tr> 
            <td align="center" valign="top" bgcolor="#FFFFFF" >
			<table width="927" height="267" border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" class="bodytable" >
                <tr> 
                  <td width="246" height="147" align="left" class="text">&nbsp;</td>
                  <td width="239" align="left" class="text">&nbsp;</td>
                </tr>
                <tr> 
                  <td height="34" colspan="2" align="center" class="messagetext" > 
                    <font size="2" ><strong>Are you sure, Do you wish to continue 
                    ?</strong></font></td>
                </tr>
                <tr class="tablerow"> 
                  <td height="21" colspan="2" >&nbsp;</td>
                </tr>
                <tr align="center" valign="middle" > 
                  <td height="60" colspan="4" align="center" >
				  <input type="submit" width="75" height="21" alt="Submit" value="Yes" border="0" onclick="return setConfirmSignOut(this)">&nbsp;&nbsp;&nbsp;&nbsp;
				  <input type="button" width="75" height="21" alt="Cancel" border="0" value="No" onClick="history.go(-1);"> 
                  </td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
  </table>
			<input type="hidden" name="eventAction">
</form>
</body>
</html>