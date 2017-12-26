<script>
function CheckInput()
{

if(f1.servName.value=="")
{
   alert("Please Enter Service Name");
   return false;
}else if(f1.validity.value=="")
{
  alert("Please Enter Validity ");
  return false;
}else if(f1.Amt.value=="")
{
  alert("Please Enter Amount");
  return false;
}

}
function onlyno(obj)
{
     phno=obj.value;
     no=phno.charAt(phno.length-1)
     if ( isNaN(no) && no!='-' ) 
          obj.value=phno.substring(0,phno.length-1)
          
          
          len=obj.value;
	  	        if(len.charAt(len.length-1)==" ")
	  	        {
	  	           alert("Spaces are not Allowed");
	  	           obj.value=len.substring(0,len.length-1);
	  	        }
	  	        
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
<form name=f1 method=post action="SaveService">

<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
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
  </TBODY></TABLE>
<TABLE class=tabformat width="20%" border=0>
  <TBODY>
  <TR>
<%

   Connection con=null;
   ResultSet service_rs=null;
   
   ConnectionBean CBean=new ConnectionBean();
  
   service_rs=CBean.executeQuery("select nvl(max(type_sid),0)+1 from toservice");
   service_rs.next();
   String  service_id=service_rs.getString(1);
   service_rs.close();
   
%>
<html>
<body bgcolor=lightblue>
<h3>New Service Registration</h3>
<form name="f1"  action="SaveService" ">

<table border="0" >
<tr>
<td class=tabhead><b>Service Id:</b>
<td class=tabhead><input type="text" name="serno" readonly value=<%=service_id%>></td></tr>
<td class=tabhead><b>Service Name</b></td>
<td class=tabhead><input type="text" name="servName" maxlength=20></td></tr>
<td class=tabhead><b>Validity: </b></td>
<td class=tabhead><input name="validity" type="text" maxlength=20></td></tr>
<td class=tabhead><b>Amount: </b></td>
<td class=tabhead><input type="text" name="Amt" onkeyup="onlyno(Amt)"  maxlength=7></td></tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value="Register" onclick="return CheckInput()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value=clear ></td>
</tr>




</table>
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
</form>
</body>
</html>
