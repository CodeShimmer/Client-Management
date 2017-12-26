<%@page import="java.sql.*,java.util.*,CMST.*" %>
<HTML><HEAD><TITLE>Home Page</TITLE>
<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>

<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<form  name=f>
<b><a href ="javascript:history.back()" >Back</a></b>
<DIV class=caption2>Customer Information</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
<TBODY>
  <TR>
    <TD class=tabhead width="10%"><a href="CustServiceDetails.jsp">About Service</a></TD>
        <TD class=tabhead width="13%"><a href="DomainFeedbackDetails.jsp">Domain Feed Back</a></TD>
        <TD class=tabhead width="10%"><a href="CustShowTemplates.jsp">Templates</a></TD>
        <TD class=tabhead width="10%"><a href="CustAboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="10%"><a href="CustContactUs.jsp">Contact Us</a></TD>
  </TBODY></TABLE>
<br>
<br>
<br>
<br>
<center>
<b>DOMAIN FEED BACK</b>
<br>
<br>
<br>
<br>
<%
String domain_name="";
String ddesc="";
  try
  {
    ConnectionBean CBean=new ConnectionBean();
    Connection con=CBean.getConnection();
   domain_name=request.getParameter("dname");
   
   
      
    ResultSet custrs_found=CBean.executeQuery("select domain_feedback from domain_feedback where domain_id=(select domain_id from cust_domain_reg where domain_name='" + domain_name + "') ");
    if(custrs_found.next())
    {
       System.out.println("in  valid");
       ddesc=custrs_found.getString(1);
       System.out.println(ddesc);
       
     }
  }catch(Exception ex)
  {
     System.out.println("Error"+ ex);
  }
 %>
<table border="0" >
<tr>
<center><td><b>Domain Name :<%=domain_name%></b> </td></center>


</tr>

<tr>
<td class=tabhead><b>Domain Feed Back</b></td>
<td class=tabhead><textarea name="Ddesc" cols=40 rows=5 ><%=ddesc%></textarea></td></tr>
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




