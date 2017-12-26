<%@page import="javax.servlet.http.*" %>

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
<b><a href ="CMSHome.html" >LogOut</a></b>
<DIV class=caption2>Customer Information</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
 <TBODY>
    <TR>
    <TD class=tabhead width="10%"><a href="CustServiceDetails.jsp">About Service</a></TD>
    <TD class=tabhead width="13%"><a href="DomainFeedbackDetails.jsp">Domain Feed Back</a></TD>
    <TD class=tabhead width="10%"><a href="CustShowTemplates.jsp">Templates</a></TD>
    <TD class=tabhead width="10%"><a href="CustAboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="10%"><a href="CustContactUs.jsp">Contact Us</a></TD>
  </TBODY>
</TABLE>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
  <TD><b><a href="DomainReg.jsp" class=caption2 >New Domain</a></b></td>
  <TD><b><a href="DomainFileUploads.jsp" class=caption2 >Domain Files Upload</a></b></td>
  </TR>
</TBODY></TABLE>
<%

String cid=session.getValue("cid") +"";
System.out.println("In About Domain");
System.out.println(cid);
  
%>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
<br>

<br>
<br>
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


</BODY></HTML>
