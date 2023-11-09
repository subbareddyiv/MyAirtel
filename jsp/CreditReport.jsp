<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<script src="<%=request.getContextPath()%>/script/caldatetime.js" language="javascript">//caldatetime.js file need
</script>
<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		Collection outnames = (Collection) request.getAttribute("outletnames");
				Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

%>

<html>

<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p>&nbsp;</p>
<p align="center" ><font color="#CC0066" size="5" face="Tahoma,Century Gothic"><u><b>Credit Report </b></u></font></p>
<form action="/airtel/creditreportprocess" method="post" name="CreditReportForm" >
<table width="340" border="0" align="center">
	<tr>
		<td width="161" align=right><b><font size=4 >Outlet Name:&nbsp;&nbsp;</font></b></td>
		<td width="167" align=left>
		<select name="outid" size="1" style="width: 160">
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
		</select></td>
	</tr>
	<!-- <tr>
		<td width="161" align=right><b><font size=4 >Start Date:&nbsp;&nbsp;</font></b></td>
		<td width="167">
	  <input type="text" name="collectdate" value="<%=sdf.format(date)%>" size="14" tabindex="17" readonly>
	  <img name="" src="<%=request.getContextPath()%>/images/CALENDAR.GIF" width="32" height="19" alt="click to get Calendar"  style="cursor:hand;" onClick="popUpCalendar(this, CreditReportForm.collectdate,'dd/mm/yyyy',-16,-26)"  >	  </font></b></td>
    <tr>
      <td align=right><b><font size=4 >End</font><font size=4 > Date:&nbsp;&nbsp;</font></b></td>
      <td><input type="text" name="collectdate1" value="<%=sdf.format(date)%>" size="14" tabindex="17" readonly>
          <img name="" src="<%=request.getContextPath()%>/images/CALENDAR.GIF" width="32" height="19" alt="click to get Calendar"  style="cursor:hand;" onClick="popUpCalendar(this, CreditReportForm.collectdate1,'dd/mm/yyyy',-16,-26)"  > </font></b></td> -->
    <tr><td align=center colspan=2><br><br>
	<input type="submit" name="generate" value="Generate" ></td></tr>
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
		