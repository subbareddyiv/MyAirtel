<%@ page import='java.io.*,java.util.*,java.sql.*,javax.servlet.*,javax.servlet.http.*' session='true'%>

<script src="<%=request.getContextPath()%>/script/caldatetime.js" language="javascript">//caldatetime.js file need
</script>
<%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Cache-Control","no-store");
response.setHeader("Cache-Control","must-revalidate ");
response.setHeader("Cache-Control", "max-age=30"); 
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires", 0);
%>
<HTML>
<BODY>
<form name="inf" action="hai.jsp">
<table width="128">
            <tr>
              <td width="15%" height="32"> <font face="Verdana"> 
                <input type="text" name="collectdate" size="14" tabindex="17" readonly>
              </font></td>
              <td width="85%"><font face="Verdana"><img name="" src="<%=request.getContextPath()%>/images/CALENDAR.GIF" width="32" height="19" alt="click to get Calendar"  style="cursor:hand;" onClick="popUpCalendar(this, inf.collectdate,'dd/mm/yyyy',-16,-26)"  ></font></td>
</table>
<p>
  <input type="submit" name="Submit" value="Submit">
</p>
</BODY>
</HTML>
