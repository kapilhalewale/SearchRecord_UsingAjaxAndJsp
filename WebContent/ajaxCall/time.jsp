<%@page import="java.util.*" %>
<%
response.setContentType("text/html");
%>
<%
String id = request.getParameter("id");
String pid = request.getParameter("pid");
%>
<html>



<body>
<div style='position:absolute;left:350px;top:120px;'>


                          <table border='2' bordercolor='#424242' width='700' class='boxs'>
                          <tr>
                            <td height='20'bgcolor='#424242' align='right'>
                            	<table width='697' border='0'>
                            		<tr>
                            			<td width='200' align='left' style='color:white;font-family:Segoe UI Light;'>Contact Popup Form</td>
                            			<td align='right'><input type='image' class='hk' src="img/cl.png" height='20'width='20'onclick="location.href=''";></td>
                            		</tr>
                            	</table>
                             </td>
                          </tr>
                             <td bgcolor='white'>  
                                  <form name="myform" action="add.jsp" onsubmit="return validate()" method='post'>
                                    <table cellpadding='6' border='0' align='center' width='600'>
                                      <tr><td height='15'></td></tr>
                                        <tr>
                                            <td class='label'>Full Name</td>
                                            <td colspan='3'><input type="text" title="Enter your First Name" required name="firstname"pattern="[A-Za-z]{10,3}" style="width:455px;"maxlength='30'></td>                                    
                                        </tr>
                                        <tr>
                                            <td class='label'>Contact Purpose</td>
                                            <td colspan='3'><input type="text" title="Contact Purpose" required name="Purpose"pattern="[A-Za-z]{10,3}" style="width:455px;"maxlength='80'></td>                                    
                                        </tr>
                                       <tr>
                                            <td class='label' valign='top'>Details Message</td>
                                            <td colspan='3'>
                                            	<textarea cols='14' rows='6'style="width:455px;border:1px solid orange;" maxlength='350'>
                                            	Id =<%= id %>
                                            	</textarea>
                                    
                                        </tr>
                                        <tr>
                                            <td class='label'>Email Address</td>
                                            <td><input type="text" title="Enter Current Email" required name="email"></td>
 
                                            <td class='label'>Mobile Number</td>
                                            <td><input type="mobile" title="Enter Mobile Number" required name="mobile"pattern="[0-9]{10,}" maxlength='10'></td>
                                        </tr>
                                         <tr>
                                            <td></td>
                                            <td><input type="submit" value="Save"class='buttun' style='background-color:#424242' >&nbsp;<input type="reset" value="Reset"class='buttun'style='background-color:#424242' ></td>
                                        </tr> 
                                    </table>  
                                  </form>
                              </td>
                            </tr>
                           </table>
</div>

</body>
</html>