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
<META><LINK title=report  media=screen href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<BODY class=rightPage><A name=Entity_1></A>

<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<b><a href ="AdminHome.html" >Back</a></b>
<DIV class=caption2>Administration Information</DIV>
<form name=f >

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
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
  <TBODY>
  <TR>
<td>
<%
try
{
Connection con=null;
Statement stmt=null;
ResultSet custrs=null;
ConnectionBean CBean=new ConnectionBean();
con=CBean.getConnection();
custrs=CBean.executeQuery("select crd.cust_id,crd.cust_name,crd.cust_address,crd.contact_no,crd.email_id,ts.service_name from toservice ts,cust_req_details crd where ts.type_sid =crd.type_sid and crd.cust_id not in(select cust_id from customer_login) ");
%>
<html>
<body bgcolor=lightblue>
<form>
<center><h1 class=tabhead>REQUESTED CUSTOMER DETAILS</h1> </center>
<table align=center border=1 colspace=10>
<th>Customer Id
<th>Customer Name
<th>Customer Address
<th>Contact Number
<th>Email Id
<th>Type Of Service
<th>Create Login
<%
while(custrs.next())
{
String cid=custrs.getString(1);
%>
<tr>
<td class=tabhead><%=cid%></td>
<td class=tabhead><%=custrs.getString(2) %></td>
<td class=tabhead><%=custrs.getString(3) %></td>
<td class=tabhead><%=custrs.getString(4) %></td>
<td class=tabhead><%=custrs.getString(5) %></td>
<td class=tabhead><%=custrs.getString(6) %></td>
<td class=tabhead ><a  href="Check.jsp?cid=<%=cid%>" style={cursor:hand}>Add</a></td>
</tr>

<%

}
custrs.close();

}catch(Exception ex)
{
%>
<b>

<%
  out.println("Error While Connecting DataBase" + ex);
}

%>

</table>

</form>
</body>
</html>





</td>





  </TR>
</TBODY></TABLE>
<br>
<br>
<br>

<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
 <TR>
     <TD class=tabhead width="10%"><H4><center>This is a Customer Domain  Registration and Service Management System Site</center></TD>
 </TR>
 
 <TR>
    <TD class=tabhead width="35%"><marquee><b>24 Hours Application dovelopment and Hosting Service </b></marquee></a></TD>
 </TR>

</TABLE>
</BODY>
</HTML>
