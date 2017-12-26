<%@page import="java.sql.*,CMST.*" %>
<script>

function CheckInput()
{
  
 if(f.upfile.value=="")
 {
   alert("Please Select Upload File");
   return false;
  
 }else
 {
   var domainname=f.dname.options[f.dname.selectedIndex].text;
   
   alert(domainname);
   f.action="UploadFiles.jsp?dname="+ domainname ;
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
<form  name=f   method="post"  enctype="multipart/form-data" >
<b><a href ="AboutDomain.jsp" >Back</a></b>
<DIV class=caption2>Customer Infomation</DIV>
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
<b>DOMAIN FILE UPLOADS</b>
<br>
<br>
<br>
<br>

<%
 try
 {
 
 String cid=session.getValue("cid")+"";
 System.out.println("in Domain file");
 System.out.println(cid);
 
 Connection con=null;
 ResultSet domain_rs=null;
 ConnectionBean CBean=new ConnectionBean();
 con=CBean.getConnection();
 domain_rs=CBean.executeQuery("select domain_id,domain_name from cust_domain_reg where cust_id=" + cid + " ");
%>
<table border="0" >
<tr>
<td class=tabhead><b>Domain Name:</b>
<td class=tabhead><select name=dname >
<%

while(domain_rs.next())
{
%>
  <option><%=domain_rs.getString(2) %></option>
<%
}
domain_rs.close();

}catch(Exception ex)
{

}

%>

</select>
</td></tr>
<tr>

<td class=tabhead><b>Upload File</b></td>
<td class=tabhead><input type=file name="upfile" ></td></tr>
<tr>
<td class=tabhead><input type=submit value="Upload" onclick="return CheckInput()"></td>
<td class=tabhead><input type=reset name="Clear"></td>
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
