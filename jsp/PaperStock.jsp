<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

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
	function setSubmit(SimStockForm)
	{
		var count = document.SimStockForm.count.value;
		var inno  = document.SimStockForm.inno.value;
		var day   = document.SimStockForm.day.value;
		var month = document.SimStockForm.month.value;
		var year  = document.SimStockForm.year.value;

		if( count == null || count == "")
		{
			alert("No. Of cards should be Mandatory.");
			return false;
		}
		else if( isNaN(count) )
		{
			alert("No. Of cards should be Numeric.");
			return false;
		}
		else if( inno == null || inno == "")
		{
			alert("Inovoice Number should be Mandatory.");
			return false;
		}
		else if( isNaN(inno) )
		{
			alert("Invoice No. Data should be Numeric.");
			return false;
		}
		else if( day == "Day" || day == "")
		{
			alert("Day should be Mandatory.");
			return false;
		}
		else if( month == "Month" || month == "")
		{
			alert("Month should be Mandatory.");
			return false;
		}
		else if( year == "Year" || year == "")
		{
			alert("Year should be Mandatory.");
			return false;
		}
		else
		{
			document.SimStockForm.eventAction.value = "entry";
			return true;
		}
	}
	function setReset(SimStockForm)
	{
		document.SimStockForm.reset();
		return false;
	}
		
</script>
<script src="<%=request.getContextPath()%>/script/caldatetime.js" language="javascript">//caldatetime.js file need
</script>

</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="4" face="Verdana, Arial, Helvetica, sans-serif"><u><b>Paper Rc.  Stock Details Entry Process</b></u></font></p>
<form action="/airtel/addpaperstock" method="post" name="SimStockForm" >
<table align="center">
<%

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			System.out.println("sim sales");
			String qry = "select * from cardtype where cardType not like 'cd%'";
			System.out.println("sim sales"+qry);
			ResultSet rs = stmt.executeQuery(qry);
			
%>

	<tr>
	  <td width="194" align=right><b><font size=4>Paper Rc.  CardType&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<select name="cardid" size="1" style="width: 160">
<%	while(rs.next())
			{%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option><%}%>
	</select></td></tr>
<tr><td align=right><b><font size=4>Total No.of  cards&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;
	  <input type="text" name="count" size="20" style="width: 165"></td></tr>

<tr><td align=right><b><font size=4>Invoice Number&nbsp;&nbsp;</b></td>
	<td colspan="3" align=left >&nbsp;&nbsp;<input type="text" name="inno" size="20" style="width: 165"></td></tr>

<tr>
  <td align=right ><b>Date<font size="1">(</font></b><font size="2">DD/MM/YY</font><b><font size="1">)</font>&nbsp;&nbsp; </b></td>
  <td width="123" height="32"><font face="Verdana">
   &nbsp;&nbsp;<input type="text" name="collectdate" size="14" tabindex="17" readonly>
  </font></td>
  <td width="51"><font face="Verdana"><img name="" src="<%=request.getContextPath()%>/images/CALENDAR.GIF" width="32" height="19" alt="click to get Calendar"  style="cursor:hand;" onClick="popUpCalendar(this, SimStockForm.collectdate,'dd/mm/yyyy',-16,-26)"  ></font></td>
</tr>

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
