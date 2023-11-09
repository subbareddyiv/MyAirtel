
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
	function setSubmit(EasyStockForm)
	{
		var amount = document.EasyStockForm.amount.value;
	var tid = document.EasyStockForm.tid.value;
//		var day   = document.EasyStockForm.day.value;
	//	var month = document.EasyStockForm.month.value;
//	var year  = document.EasyStockForm.year.value;
	var ddno = document.EasyStockForm.ddno.value;
		
		if( amount == null || amount == "")
		{
			alert("Amount should be Mandatory.");
			document.EasyStockForm.amount.focus();

			return false;
		}
		else if( isNaN(amount) )
		{
			alert("Amount should be Numeric.");
			return false;
		}
		else if( tid == null || tid == "")
		{
			alert("Transaction ID should be Mandatory.");
			document.EasyStockForm.tid.focus();
			return false;
		}
		else if( isNaN(tid) )
		{
			alert("Transaction ID should be Numeric.");
			document.EasyStockForm.tid.focus();
			return false;
		}
		
else if(document.EasyStockForm.collectdate.value=="")
		{
			alert("Date is Mandotary.");
document.EasyStockForm.collectdate.focus();
			return false;
		}



		else if( ddno == null || ddno == "")
		{
			alert("DD No. should be Mandatory.");
document.EasyStockForm.ddno.focus();
			return false;
		}
		else if( isNaN(ddno) )
		{
			alert("DD No. should be Numeric.");
			return false;
		}
		else
		{
			document.EasyStockForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(EasyStockForm)
	{
		document.EasyStockForm.reset();
		return false;
	}
</script>
<script src="<%=request.getContextPath()%>/script/caldatetime.js" language="javascript">

//caldatetime.js file need
</script>

</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Easy Rc. Amount Details Entry Process</b></u></font></p>
<form action="/airtel/easystock" method="post" name="EasyStockForm" onsumbit="return setSubmit(EasyStockForm)">
<table width="359" align="center">
<tr><td width="164" align=right ><b><font size=4>Total Easy Rc. Amount:&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="amount" size="20" style="width: 165"></td></tr>

<tr><td align=right ><b><font size=4>Transaction Id:&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="tid" size="20" style="width: 165"></td></tr>
	<tr>
  <td align=right ><b>Date<font size="1">(</font></b><font size="2">DD/MM/YY</font><b><font size="1">)</font>&nbsp;&nbsp; </b></td>
  <td width="123" height="32"><font face="Verdana">
   &nbsp;&nbsp;<input type="text" name="collectdate" size="14" tabindex="17" readonly>
  </font></td>
  <td width="51"><font face="Verdana"><img name="" src="<%=request.getContextPath()%>/images/CALENDAR.GIF" width="32" height="19" alt="click to get Calendar"  style="cursor:hand;" onClick="popUpCalendar(this, EasyStockForm.collectdate,'dd/mm/yyyy',-16,-26)"  ></font></td>
</tr>

	
	<tr><td align=right ><b><font size=4>DD No:&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="ddno" size="20" style="width: 165"></td></tr>
<tr><td align=center colspan=4><br><br>
	<input type="submit" value="Commit" onClick="return setSubmit(this)" >&nbsp;&nbsp;
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