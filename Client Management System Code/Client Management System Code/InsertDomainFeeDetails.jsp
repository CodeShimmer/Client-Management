<%@page import="java.sql.*,CMST.*" %>
<script>
function GetDomain(cid)
{
if(f.cid.selectedIndex!=0)
{
 var cid=f.cid.options[f.cid.selectedIndex].text;
 f.action="InsertDomainAmt.jsp?cid=" + cid + " ";
 f.submit();
}

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
<form name=f >
<b><a href ="AdminAboutService.jsp" >Back</a></b>
<DIV class=caption2>Administration Information</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
<TBODY>
 <TR>
    <TD class=tabhead width="20%"><a href="CustomerDetails.jsp">Requested Customer Details</a></TD>
    <TD class=tabhead width="10%"><a href="AdminAboutService.jsp">About Service</a></TD>
    <TD class=tabhead width="10%"><a href="FeedBack.jsp">FeedBack</a></TD>
    <TD class=tabhead width="10%"><a href="AdminShowTemplates.jsp">Templates</a></TD>
    <TD class=tabhead width="10%"><a href="AdminAboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="10%"><a href="AdminContactUs.jsp">Contact Us</a></TD>
</TBODY>
</TABLE>
<center>
<h3>MEMBERSHIP FEE DETAILS</h3>
<%
try
{
 Connection con=null;
 ResultSet cust_rs=null;
 ConnectionBean CBean=new ConnectionBean();
 con=CBean.getConnection();
 cust_rs=
 CBean.executeQuery("select cust_id from cust_req_details where cust_id not in(select cust_id from membership_fee) order by cust_id ");
%>
<table border="0" >
<tr>
<td class=tabhead><b>Select Customer Id:</b>
<td class=tabhead><select name="cid" onchange="GetDomain()">
<option>CustomerId</option>

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
System.out.println(ex);


}
%>
</select>
</td>
</tr>
<tr>
<br>
<br>
<br>
<br>
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
