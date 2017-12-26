<%@page import="java.sql.*,CMST.*" %>
<script>

function CheckLogin()
{
  
 if(f.cLid.value=="")
 {
   alert("Please Enter Login Name");
   return false;
   
 }else if(f.cPwd.value=="")
 {
   alert("Please Enter Password");
   return false;
 }else
 {
 alert("Ok");
   
   f.action="UserLogin";
  f.submit();
 }
 
 
}
function Clear()
{
  f.cLid.value="";
  f.cPwd.value="";
  return false;
}
</script>
<style>
a
{
           color:"Black";
           text-decoration:none;
}
a:hover
{
            color:Gray;
            text-decoration:underline;

}
</style>
<HTML><HEAD><TITLE>Home Page</TITLE>
<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<BODY class=rightPage><A name=Entity_1></A>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<form name=f action="TestUpload.jsp">
<b><a href ="javascript:history.back()" >Back</a></b>
<DIV class=caption2>General info</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
<TBODY>
  <TR>
    <TD class=tabhead width="15%"><a href="RequisitionForm.jsp">Requisition</a></TD>
    <TD class=tabhead width="15%"><a href="ServiceDetails.jsp">About Service</a></TD>
    <TD class=tabhead width="15%"><a href="CustLogin.jsp">Customer Login</a></TD>
    <TD class=tabhead width="15%"><a href="ShowTemplates.jsp">Templates</a></TD>
    <TD class=tabhead width="15%"><a href="LoginCheck">Administration</a></TD>
    <TD class=tabhead width="15%"><a href="AboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="15%"><a href="ContactUs.jsp">Contact Us</a></TD>
</TBODY></TABLE>
<center>
<b>DOMAIN FEE DETAILS</b>
<%
try
{
 Connection con=null;
 ResultSet cust_rs=null;
 ConnectionBean CBean=new ConnectionBean();
 con=CBean.getConnection();
 cust_rs=CBean.executeQuery("select distinct(cust_id) from cust_domain_reg");
 
%>
<table border="0" >
<tr>
<td class=tabhead><b>Select Customer Id:</b>
<td class=tabhead><select name=cid>
<%
while(cust_rs.next())
{
%>
 <option><%=cust_rs.getString(1) %></option>
<%
}
  cust_rs.close();
}catch(Exception ex)
{

}
%>
</select>
</td>
</tr>
<tr>
<br>
<br>
<br><br>
<br>
<br>

<td class=tabhead>
<br><input type=submit value="Update"></td>
<td class=tabhead><br><input type=reset name="Clear"></td>
</tr>
</table>
  </center>
<br>
<br>
<br>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
  <TR>
    <TD class=tabhead width="10%"><H4><center>This is a Customer Domain  Registration and Service Management System Site</center></TD>
 </TR>
  <tr>
    <TD class=tabhead width="35%"><marquee><b>24 Hours Application dovelopment and Hosting Service </b></marquee></a></TD>
  </tr>
</TABLE>

</form>
</BODY></HTML>
