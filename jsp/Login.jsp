<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
%>

<html>
<head>
<title>AIRTEL</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta http-equiv="cache-control" content="no-cache" >
<meta http-equiv="cache-control" content="no-store" >
<meta http-equiv="cache-control" content="private" >
<meta http-equiv="cache-control" content="max-age=0,must-revalidate" >
<meta http-equiv="expires" content="0" >
<meta http-equiv="pragma" content="no-cache" >

<style type="text/css">
<!--
body 
{
	background-color: #FFFFFF;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

body,td,th 
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
}
.header_02 
{

	font-family: Arial, Helvetica, sans-serif;
	text-transform: none;
	color: #000000;
	font-size: 12px;
	font-style: normal;
	line-height: normal;
	font-weight: bold;
	font-variant: normal;
	text-decoration: none;
}
.style8 
{
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #666666}
.style9 {color: #FF0000}
.style10 {font-size: 10px}

-->
</style>
<script language="JavaScript" type="text/javascript" >

function f()
{
document.f.username.focus();
}

	function fun()
	{
		var name = document.f.username.value;
		var pwd = document.f.password.value;
		if( name == null || name == "" )
		{
			alert("UserName should be Mandatory.");
            document.f.username.focus();
			return false;
		}
		else if( pwd == null || pwd == "" )
		{
			alert("Password should be Mandatory.");
			 document.f.password.focus();
			return false;
		}
		
	}
	
</script>
</head>
<body onload="f()">

<div align="center">
  <table border="0" cellpadding="0" cellspacing="0" width="986" >
    <tr>
      <td><div align="center">
            <table border="0" cellpadding="0" cellspacing="0" width="988" >              
                <tr> 
                 <td valign="bottom"><img src="images/black-airtel-logo.gif" width="248" height="150" ></td>
                 <td valign="bottom"><img src="images/airworld_outlets.jpg" width="740" height="150" ></td>
                </tr>              
            </table>
          <table align="center" border="0" cellpadding="0" cellspacing="0" width="988">
            <tr>
              <td colspan="3" valign="top">
                <center>
                  <br>
                  <br>
                  <br>
                  <br>
                  <table border="0" cellpadding="0" cellspacing="4" width="988">
                    <tr>
                      <td align="left" valign="top" width="162">
					  <table border="0" cellpadding="0" cellspacing="0" height="38" width="100%">
                        <tr>
                          <td valign="top"><img src="images/bot_mobile.gif" alt="Mobile Services" name="bot_mobile" border="0" height="19" width="108"></td>
                        </tr>
                      </table>                       
					  <font color="#666666" face="Verdana, Arial, Helvetica, sans-serif" size="1">Get connected to the world with India&#8217;s leading telecommunication service provider</font></td>
                      <td background="images/bot_div.gif" valign="top" width="1"><div align="center"><img src="images/bot_div.gif" height="100%" width="1"></div></td>
                      <td align="left" valign="top" width="162">
					  <table border="0" cellpadding="0" cellspacing="0" height="38" width="100%">
                        <tr>
                          <td valign="top">
							<img src="images/bot_broadband.gif" alt="Broadband" name="bot_broadband" border="0" height="20" width="134"><br>
                            <img src="images/bot_telephone.gif" alt="Telephone Services" name="bot_telephone" border="0" height="18" width="134"></td>
                        </tr>
                      </table>                       
                      <font color="#666666" size="1">From integrated broadband &amp; telephone services for corporates to user friendly plans for homes. Ring in the future with Airtel!</font></td>
                      <td background="images/bot_div.gif" valign="top" width="1"><div align="center"><img src="images/bot_div.gif" height="100%" width="1"></div></td>
                      <td align="left" valign="top" width="162">
					  <table border="0" cellpadding="0" cellspacing="0" height="38" width="100%">
                        <tr>
                          <td valign="top"><img src="images/bot_ld.gif" alt="Long Distance Services" name="bot_longdist" border="0" height="38" width="107"></td>
                        </tr>
                      </table><font color="#666666" size="1">Get connected on the world class Airtel long distance network. <br>
                      The backbone for your communication.</font></td>
                      <td background="images/bot_div.gif" valign="top" width="1"><div align="center"><img src="images/bot_div.gif" height="100%" width="1"></div></td>
                      <td align="left" valign="top" width="162">
					  <table border="0" cellpadding="0" cellspacing="0" height="38" width="100%">
                        <tr>
                          <td valign="top"><img src="images/bot_about.gif" alt="About Bharti" name="bot_about" border="0" height="38" width="93"></td>
                        </tr>
                      </table>
                        <font color="#666666" size="1">Established in 1985, Bharti has been a pioneering force in the telecom sector with many firsts and innovations to its credit.</font></td>
                    </tr>
                  </table>
                </center></td>
            </tr>
            <tr><td height="45">&nbsp;</td>
            </tr>
            <tr>
              <td bgcolor="F3F3F3" valign="top" width="360">
			  <div align="left"><br>
                <img src="images/myairtel.jpg" height="23" width="102">
				<strong><br>
                <span class="style3">&nbsp;&nbsp;&nbsp;Manage your Airtel<br>
                </span></strong><span class="style3">&nbsp;&nbsp;</span>
                  <table align="right" border="0" cellpadding="0" cellspacing="0" width="95%">
                    <tr>
                      <td><span class="style3">
					  :: View and pay your bills<br>
					  :: View the orders and stocks<br>
					  :: Generate dynamic & flexible reports</span></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td><span class="header_02 style9">&nbsp;<span class="style10"><a href="http://www.airtelworld.com/self_care_learn.htm" target="_self">LEARN MORE</a> </span></span></td>
                    </tr>
                  </table>
                  <span class="header_02 style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><br>
              </div></td>
              <td bgcolor="F3F3F3" valign="top" width="288">
				<div align="left"><br><span class="style8">LOGIN</span></div>
				  <form name="f" onsubmit="return fun()" method="post" action="./login" >
				  <table border="0" cellpadding="0" cellspacing="0" width="95%">  
				  <tr>
					<td width="30%"><div align="left">USERNAME:</div></td>
					<td align="left" width="70%"><input name="username" size="15" maxlength="25" type="text"></td>
				  </tr>
				  <tr><td>&nbsp;</td></tr>
				  <tr>
					<td><div align="left">PASSWORD:</div></td>
					<td align="left"><input name="password" size="15" maxlength="25" type="password"></td>
				  </tr>
				  <tr><td colspan="2">&nbsp;</td></tr>
				   <tr>
					<td align="center" colspan="2" >
					<input src="images/but_login.gif" border="0" height="30" type="image" width="85" >
					<input src="images/but_reset.gif" border="0" height="30" type="image" width="80"></td>
				   </tr>
				   <tr><td align="center" colspan="2" ><font color="red" ><%=message%></font></td></tr>
				</table>
					<input type="hidden" name="eventAction" value="signin" >
				</form>
              </td>
            </tr>
			<tr><td height="74" colspan="2" bgcolor="#F3F3F3" >&nbsp;</td></tr>
            <tr>
              <td colspan="3" bgcolor="#ffffff" height="13" valign="top"><img src="images/selfcare.jpg" height="30" width="988"></td>
            </tr>
          </table>
          </div></td>
    </tr>
  </table>
</div>
</body>
</html>