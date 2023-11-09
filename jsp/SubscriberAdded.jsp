<%
		String message = "";
		if( request.getAttribute("msg") != null )
		{
			message = (String) request.getAttribute("msg");
		}
		
%>
<html>
<body bgcolor="lavender">
<p align="center"><font color="red" ><%=message%></font></p>
</body>
</html>
