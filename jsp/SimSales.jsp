<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		Collection outnames = (Collection) request.getAttribute("outletnames");
%>

<html>
<head>
<script language="javascript" type="text/javascript" >
	function setSubmit(SimSaleForm)
	{
		var count = document.SimSaleForm.count.value;
		if( count == null || count == "" )
		{
			alert("Enter SIM cards count.");
			document.SimSaleForm.count.focus();
			return false;
		}
		else if( isNaN(count) )
		{
			alert("SIM cards count should be Numeric.");
			document.SimSaleForm.count.focus();
			return false;
		}
		else
		{
			document.SimSaleForm.eventAction.value = "entry";
			return true;
		}
	}
</script>
</head>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Sim Cards Sales Process</b></u></font></p>
<form action="/airtel/addsimsales" method="post" name="SimSaleForm" >
<center>
<br><br>
<table>
<%

			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			System.out.println("sim sales");
			String qry = "select * from cardtype where cardType like 'cd%'";
			System.out.println("sim sales"+qry);
			ResultSet rs = stmt.executeQuery(qry);
			
%>

	<tr><td align=right><b><font size=4>SIM CardType&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<select name="cardid" size="1" style="width: 160">
<%	while(rs.next())
			{%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option><%}%>
	</select></td></tr>
	<tr><td align=right><b><font size=4 >Outlet Name&nbsp;&nbsp;</b></td>
	<td align=left>&nbsp;&nbsp;<select name="outid" size="1" style="width: 160">
<%
	for(Iterator iter = outnames.iterator(); iter.hasNext();)
	{
		int outid = Integer.parseInt((String) iter.next());
		String outletName = (String) iter.next();
%>
		<option value="<%=outid%>" ><%=outletName%></option>
<%
	}
%>		
	</select></td></tr>
	<tr><td align=right ><b><font size=4 >Sold SIM cards&nbsp;&nbsp;</b></td>
	<td align=left >&nbsp;&nbsp;<input type="text" name="count" size="20"  style="width: 160"></td></tr>
	<tr><td align=center colspan=2 ><br><br>
	<input type="submit" name="submit" value="commit" onClick="return setSubmit(this)" ></td></tr>
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