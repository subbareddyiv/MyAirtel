<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%
			String id = request.getParameter("id");
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airtel","root","root");
			Statement stmt = con.createStatement();
			int i = stmt.executeUpdate("delete from users where id="+id+"");
			if(i==1)
			{
					String msg = "User Deleted Successfully";
					request.setAttribute("msg",msg);
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/EditUser.jsp");
					rd.forward(request,response);
			}
			else
			{
					String msg = "Problem in Deletion!!";
					request.setAttribute("msg",msg);
					RequestDispatcher rd = request.getRequestDispatcher("/jsp/EditUser.jsp");
					rd.forward(request,response);
			}
			
	%>		

</body>
</html>
