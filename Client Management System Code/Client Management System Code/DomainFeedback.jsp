<%@page import="java.sql.*,CMST.*" %>
<script>
function GetDomain(cid)
{


if(f.dname.selectedIndex!=0)
{
 f.did.options[f.dname.selectedIndex].selected=true;
 var cid=f.did.options[f.dname.selectedIndex].text;
}


}

function CheckInput()
{
  if(f.dname.selectedIndex==0)
  {
  alert("Please Select Domain Name");
  return false;
  }else if(f.feedback.value=="")
  {
  alert("Please Enter Domain Feed Back");
  
  return false;
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
<form name=f action="DomainFeed">
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
<h3>DOMAIN FEED BACK DETAILS</h3>
<%
try
{
  Connection con=null;
  ResultSet cust_rs=null;
  ConnectionBean CBean=new ConnectionBean();
  con=CBean.getConnection();
  String cid=request.getParameter("cid");
  cust_rs=CBean.executeQuery("select d.domain_id,d.domain_name from cust_domain_reg d where d.cust_id=" + cid + " ");
%>
<table border="0" >
<tr>
<td class=tabhead><h3>Customer Id: <%=cid%></h3><td><input type=hidden value=<%=cid%> name=txtcid>
<tr>
<td class=tabhead><b>Select Domain Name :</b>
<td class=tabhead><select name=dname onchange="GetDomain()">
 <option>Domain Name</option>
<%
while(cust_rs.next())
{
%>
 <option><%=cust_rs.getString(2) %></option>
<%
}
cust_rs.close();
%>
</select>
<select name=did style={visibility:hidden}>
<option>Domain Id</option>
<%
cust_rs=CBean.executeQuery("select d.domain_id,d.domain_name from cust_domain_reg d where d.cust_id=" + cid + " ");
while(cust_rs.next())
{
%>
  <option><%=cust_rs.getString(1) %></option>
<%
}
cust_rs.close();
%>
</select>
<%
}catch(Exception ex)
{
   System.out.println(ex);
}
%>
</td>
</tr>
<tr>
<td class=tabhead>
<b>Domain Feed Back:</b><td>&nbsp;&nbsp;&nbsp;<textarea name="feedback" cols=50 rows=6></textarea>
</tr>
<tr>
  <td>&nbsp;&nbsp;&nbsp;<input type=submit value="Send" onclick=" return CheckInput()">
  <td>&nbsp;&nbsp;&nbsp;<input type=Reset value="Clear">
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


