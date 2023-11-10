<html>
<head>
<title>Airtel Prepaid Management Systems</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/table.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#ffffff" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<%
	String username = (String)session.getAttribute("username");
	if (username == null  )
	{
		request.setAttribute("msg", "Session has ended.  Please login.");
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}
%>

<form name="IconForm" method="POST" action="" >
<table border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr> 
    <td align="left" valign="top" width="180" height="75" bordercolor="#666666" ><img src="images/airtel-logo.gif" width="180" height="75" border="2"></td>
	<td align="left" valign="top" bgcolor="#F5F5C5" height="75" class="bannercaption" width="806" ><img src="images/banner.gif" width="807" height="75" ></td>
  </tr>
  <tr>
    <td align="left" valign="top" height="100%" width="180" >
	<table width="180" height="296%" border="0" cellpadding="0" cellspacing="0" class="leftbox">
        <tr> 
          <td height="80" colspan="2" bgcolor="#656565">&nbsp;</td>
        </tr>
        <tr> 
          <td height="23" colspan="2" align="center" valign="top" bgcolor="#656565">&nbsp;</td>
        </tr>
        <tr> 
          <td colspan="2" align="center" valign="top" bgcolor="#656565">
		  <table width="123" border="0" cellpadding="0" cellspacing="0" class="buttonbox">
              
                <td align="left" valign="middle" width="123" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/jsp/AdminHome.jsp" target="SecmsIFrame" class="text">Home</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" width="123" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/jsp/Users.jsp" target="SecmsIFrame" class="text">User Details</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/simsales" target="SecmsIFrame" class="text">SIM Sales</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/simact" target="SecmsIFrame" class="text">SIM Activation</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/easysale" target="SecmsIFrame" class="text">Easy Refilling Sales</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" height="28" class="text" bgcolor="#EFEFCC" > <a href="/airtel/papersale" target="SecmsIFrame" class="text">Paper Rc. Card Sales</a></td>
              </tr>
              <tr> 
                <td  height="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" width="123" height="28" class="text" bgcolor="#EFEFCC" > <a href="jsp/OperatorActivities.jsp" target="SecmsIFrame" class="text">Operator Activities</a></td>
              </tr>
              <tr> 
                <td  height="2"colspan="2"><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td align="left" valign="middle" width="123" height="28" class="text" bgcolor="#EFEFCC" ><a href="jsp/ReportActivities.jsp" target="SecmsIFrame" class="text">Reports</a></td>
              </tr>
              <tr> 
                <td  height="2" colspan="2" ><img src="images/groove.gif" width="106" height="2"></td>
              </tr>
              <tr> 
                <td height="40" colspan="2">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="40" colspan="2" bgcolor="#656565">&nbsp;</td>
        </tr>       
	    <tr> 
          <td colspan="2" height="45" align="right" valign="middle" bgcolor="#656565" >
		  <a href="/airtel/login?eventAction=confirmation" target="_parent" >
		  <img src="images/but_logout.gif" width="57" height="23" border="0" ></a> &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr bgcolor="#656565"> 
          <td height="32" colspan="2">&nbsp;</td>
        </tr>
      </table></td>
				<input type="hidden" name="eventAction">
</form>

    <td align="center" valign="top" bgcolor="#FFFFFF">	
		<iframe name="SecmsIFrame" frameborder="0" height="100%" width="110%" scrolling="auto" src="jsp/welcome.jsp" >
		</iframe>
	</td>  
  </tr>
  <tr> 
    <td colspan="3" align="center" valign="middle" bgcolor="#000000" class="copyrighttext"> 
      Copyright Hosting Airtel Prepaid Mgt Systems, inc. All rights reserved.</td>
  </tr>
</table>
</body>
</html>
