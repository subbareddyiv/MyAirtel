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
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:126px;
	height:145px;
	z-index:1;
	left: 463px;
	top: 190px;
}
#Layer2 {
	position:absolute;
	width:200px;
	height:130px;
	z-index:2;
	left: 88px;
	top: 190px;
}
#Layer3 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 414px;
	top: 192px;
	visibility: visible;
}
#Layer4 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 84px;
	top: 190px;
}
#Layer5 {
	position:absolute;
	width:257px;
	height:115px;
	z-index:2;
	left: 449px;
	top: 190px;
}
.style3 {font-family: Verdana, Arial, Helvetica, sans-serif; font-weight: bold; font-size: 9pt; }
-->
</style>
</head>
<%
			String inno = request.getParameter("inno");
			System.out.println("Invoice No::"+inno);
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
%>
<% Statement stx = con.createStatement();
	String ax = "select * from simstock s,paperstock p where s.invoiceno = "+inno+" or p.invoiceno = "+inno+"";
	System.out.println("-------------"+ax);
	ResultSet hello = stx.executeQuery(ax);
	if(hello.next())
	{
%>

<%
			Statement stmt = con.createStatement();
			String qqq = "select invoicedate from simstock where invoiceno="+inno+"";
			System.out.println("++++++++++"+qqq);
			ResultSet rs = stmt.executeQuery(qqq);
			String indate = "";
			if(rs.next())
			{
				indate = rs.getString(1);
			}
			else
			{
				Statement sttmt = con.createStatement();
				String qqqq = "select invoicedate from paperstock where invoiceno="+inno+"";
				System.out.println("++++++++++"+qqqq);
				ResultSet rsx = sttmt.executeQuery(qqqq);
				if(rsx.next())
				{
					indate = rsx.getString(1);
				}
			}
			System.out.println("date::"+indate);
			String y = indate.substring(0,4);
			String m = indate.substring(6,7);
			String d = indate.substring(9,10); 
			int datee = Integer.parseInt(d);
			if(datee<=9){ d = "0"+d;}
			int month = Integer.parseInt(m);
			if(month<=9){ m = "0"+m;}
			String indate1 = d + "/" + m + "/" + y;
			System.out.println("Date::"+indate1);
%>
<body bgcolor="lavender" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="797" border="0" cellpadding="0" cellspacing="0" class="mainbox">
<tr>
<td>
<p>&nbsp;</p><p align="center"><font color="#CC0066" size="3" face="Tahoma,Century Gothic"><u><b>Invoice Report</b></u></font></p>
<p align="center" >&nbsp;</p>
<table width="796" border="0">
  <tr>
    <td width="168" align=right ><b>Invoice Number : </b></td>
        <td width="160" align=left ><input name="a" type="text" style="width: 80" value="<%=inno%>" size="5" readOnly></td>
        <td width="118" align=left >&nbsp;</td>
    <td width="96" align=left ><b>Invoice Date :</b></td>
	<td width="232" align=left ><input name="a2" type="text" style="width: 80"  value="<%=indate1%>" readOnly></td>
  </tr>
</table>
<p>&nbsp;</p><div id="Layer4">
<table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="50%">    
  <tr>
      <td width="107"><div align="center" class="style3">Sim Card Type </div></td>
      <td width="61"><div align="center" class="style3">Count</div></td>
    </tr>
    <% Statement st5 = con.createStatement();
		String a = "select * from simstock where invoiceno = "+inno+"";
		System.out.println("-------------"+a);
		ResultSet simrs = st5.executeQuery(a);
		Statement str = con.createStatement();
		while(simrs.next())
		{
			ResultSet ras = str.executeQuery("select cardType from cardtype where id="+simrs.getString(3)+"");
			ras.next();
	%>
    <tr>
      <td bgcolor="#CCCCCC"><input type="text" name="textfield4" value="<%=ras.getString(1)%>" readOnly></td>
      <td bgcolor="#CCCCCC"><input name="textfield3" type="text" size="10" value="<%=simrs.getString(6)%>" readOnly></td>
    </tr>
    <%}%>
  </table>
</div>
<%System.out.println("helloooooooooooooo");%>
<div id="Layer5">
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="50%">    <tr>
      <td width="166"><div align="center" class="style3">Paper Rc.  Card Type </div></td>
      <td width="60"><div align="center" class="style3">Count</div></td>
    </tr>
    <% Statement st7 = con.createStatement();
		String a7 = "select * from paperstock where invoiceno = "+inno+"";
		System.out.println("-------------"+a7);
		ResultSet paperrs = st7.executeQuery(a7);
		Statement str1 = con.createStatement();
		while(paperrs.next())
		{
			ResultSet ras1 = str1.executeQuery("select cardType from cardtype where id="+paperrs.getString(3)+"");
			ras1.next();
	%>
    <tr>
      <td><input type="text" name="textfield42" value="<%=ras1.getString(1)%>" readOnly></td>
      <td><input name="textfield32" type="text" size="10" value="<%=paperrs.getString(6)%>" readOnly></td>
    </tr>
    <%}%>
  </table>
</div>
<p>&nbsp;</p>
  <%}
	else
	{
		out.println("Sorry Invoice Number not Existed neither simstock nor paper stock!!");
	}
%>
<p align="center"><font color="red" size="+1"><strong><%=message%></strong></font></p>
	<input type="hidden" name="eventAction" >
</td>
</tr>
</table>
</body>
</html>