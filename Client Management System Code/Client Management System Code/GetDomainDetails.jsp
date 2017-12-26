<%@page import="java.sql.*,CMST.*" %>
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
<form name=f>
<b><a href ="javascript:history.back()" >Back</a></b>
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
</TBODY></TABLE>
<center>
<h3>DOMAIN DETAILS</h3>
<%
try
{
 
 Connection con=null;
 ResultSet domain_rs=null;
 ConnectionBean CBean=new ConnectionBean();
 con=CBean.getConnection();
 String cid=request.getParameter("cid");
 
 System.out.println(cid);
 domain_rs=CBean.executeQuery("select d.domain_id,d.domain_name,d.server,d.todatabase,to_char(d.ser_st_date,'dd-mm-yyyy'),d.domain_desc from cust_domain_reg d where d.cust_id=" + cid + " ");
 
%>
<br>
<table>
<tr>
<td><h3>Customer Id:</h3></td><td><h3><%=cid%></h3></td>
</tr>
</table>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
<th>Domain Id
<th>Domain Name
<th>Server Name
<th>DataBase
<th>Service Start Date
<th>Domain Description

<%
while(domain_rs.next())
{
%>
<tr>
<td class=tabhead1><%=domain_rs.getString(1)%></td>
<td class=tabhead1><%=domain_rs.getString(2)%></td>
<td class=tabhead1><%=domain_rs.getString(3)%></td>
<td class=tabhead1><%=domain_rs.getString(4)%></td>
<td class=tabhead1><%=domain_rs.getString(5)%></td>
<td class=tabhead1><%=domain_rs.getString(6)%></td>
</tr>
<%
}
domain_rs.close();
}catch(Exception ex)
{
System.out.println(ex);

}
%>
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
