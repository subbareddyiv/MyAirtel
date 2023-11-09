
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
%>

<html>
<style type="text/css">
<!--
.style2 {font-size: 18px}
.style3 {font-size: 18px; font-weight: bold; }
#Layer1 {
	position:absolute;
	width:355px;
	height:230px;
	z-index:1;
	left: 271px;
	top: 117px;
	visibility: visible;
}
#Layer2 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:2;
	left: 294px;
	top: 123px;
	visibility: visible;
}
-->
</style>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Operator Activities</b></u></font></p>
<form method="post" name="OperatorForm" action="/airtel/activity" >
<div id="Layer1">
  <table width="246" height="245" border="1" bordercolor="#999999">
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</div>
<div id="Layer2">
  <table border="0" align="center" bordercolor="#999999">
    <tr>
      <td><a href="/airtel/jsp/Distributor.jsp">Distributor Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/subinfo.jsp" >Subscriber Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/outinfo.jsp" >Outlet Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/StockDetails.jsp" >Stock Information Entry </a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/proofinfo.jsp" >Proof Doc's Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/compinfo.jsp" >Competative Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/catinfo.jsp" >Category Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/jsp/Cardtype.jsp" >Card Type Information</a></td>
    </tr>
    <tr>
      <td><a href="/airtel/payments" target="SecmsIFrame">Payments Collection</a></td>
	  </tr>
	 <!--  <tr>
      <td><a href="/airtel/jsp/returns.jsp" target="SecmsIFrame" class="text style2"><b>Returns</b></a></td>
	  </tr> -->
    </table>

</div>
</form>
</td>
</tr>
</table>
<br>
<p align="center"><font color="magenta" ><%=message%></font></p>
</body>
</html>