<script>
function CheckInput()
{
if(f.cLid.value=="")
{
   alert("Please Enter Login Name Name");
   return false;
}else if(f.cPwd.value=="")
{
  alert("Please Enter Password");
  return false;
}

}

function validateuserid(user)
{


	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	
	
	
	var sURL = "CheckUser?user=" + user
	
	
	
	oXMLHTTP.open("POST", sURL, false );
	
	
	oXMLHTTP.send();
	
	
	
	
	var  status=oXMLHTTP.responseText;
	
	
	
	var str="a";
	
		 
		 
	 if(status.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
         f.cLid.value="";
	 f.cLid.focus();
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
<form name=f method=post action="SaveUserLogin">
<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<b><a href ="CustomerDetails.jsp" >Back</a></b>
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
   String cid=request.getParameter("cid");
%>
<html>
<body bgcolor=lightblue>
<h3>New Customer Adding</h3>

<form name="f1"  action="SaveUserLogin" ">
<table border="0" >
<tr>
<td class=tabhead><b>customer Id:</b>
<td class=tabhead><input type="text" name="crno" readonly value=<%=cid%>></td></tr>
<td class=tabhead><b>Login Name</b></td>
<td class=tabhead><input type="text" name="cLid" onblur="validateuserid(this.value);" maxlength=10></td></tr>
<td class=tabhead><b>Password </b></td>
<td class=tabhead><input name="cPwd" type=password maxlength=20></td></tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value="Add" onclick="return CheckInput()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value=clear ></td>
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
