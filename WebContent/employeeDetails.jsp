<!-- 
Author Kapil Halewale
 -->
<%@page import="utility.ConnectionProvider"%>
<%@ page import="java.sql.*"%>  
 <style>
 table{
 border-collapse:collapse;
 font-size:14px;
 font-family:calibri;
 }
 </style> 
<%  
String s=request.getParameter("val");  
if(s==null || s.trim().equals("")){  
out.print("Please Enter Employee ID Number");  
}else{  
int id=Integer.parseInt(s);  
out.print(id);  
try{  
	
Connection con=	ConnectionProvider.getCon();
PreparedStatement ps=con.prepareStatement("select * from employee where eid=?");  
ps.setInt(1,id);  
ResultSet rs=ps.executeQuery();  
if(rs.next()){  %>

<table border='1' cellpadding='2' bordercolor='orange' width='500'>
	<tr bgcolor='orange' style='color:window;'align='center' height='20'>
		<td>Employee Name</td>
		<td>Mobile Number</td>
		<td>Email ID</td>
		<td>State</td>
		<td>Country</td>
	</tr>
	<tr align='center' height='40'>
		<td><%= rs.getString(2) %> </td>
		<td><%= rs.getString(3) %> </td>
		<td><%= rs.getString(4) %> </td>
		<td><%= rs.getString(5) %> </td>
		<td><%= rs.getString(6) %> </td>
	</tr>
</table>
<%
}else{
out.print("<font color='red' face='calibri'size=4px;>");
out.print("&nbsp;No Employee Record Found</font>");
}
}catch(Exception e){e.printStackTrace();}  
}  
%>