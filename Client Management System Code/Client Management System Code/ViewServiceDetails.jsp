<%@page import="javax.servlet.*" %>

<script>
function Update(serid)
{

 
  
 window.open("UpdateService.jsp?sid="+ serid + " ","popup","width=500,height=400")


}
</script>
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
<form name=f>
<BODY class=rightPage><A name=Entity_1></A>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<a href ="AdminAboutService.jsp" ><b>Back</b></a></b>
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
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
  <TBODY>
  <TR>
<td>

<%
try
{
Connection con=null;
ResultSet rs=null;
ConnectionBean CBean=new ConnectionBean();
con=CBean.getConnection();
rs=CBean.executeQuery("select * from toservice order by type_sid");

%>
<html>
<body bgcolor=lightblue>
<form>
<center><h1 class=tabhead>SERVICE DETAILS</h1> </center>
<table align=center border=1 colspace=10>
<th>ServiceId
<th>Service Name
<th>Validity
<th>Amount
<th>Modify
<%
while(rs.next())
{
 String sid=rs.getString(1);
%>
<tr>
<td class=tabhead><%=sid%></td>
<td class=tabhead><%=rs.getString(2)%></td>
<td class=tabhead><%=rs.getString(3)%></td>
<td class=tabhead><%=rs.getString(4)%></td>
<td class=tabhead><a style={cursor:hand} onclick="Update('<%=sid%>')">Update</a></td>

</tr>
<%
}

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
    <TD class=tabhead width="35%"><marquee><b>24 Hours Application development and Hosting Service </b></marquee></a></TD>
 </TR>

 
</TABLE>
</BODY>
</HTML>
