<script>
function CheckInput()
{
if(f1.aid.value=="")
{
   alert("Please Enter Admin Id");
   return false;
   
   
}else if(f1.apwd.value=="")
{
   alert("Please Enter Admin Password");
   return false;
}else if(f1.cmp.value=="")
{
  alert("Please Enter Company Name");
  return false;
}else if(f1.AdminAdd.value=="")
{
  alert("Please Enter Company Address");
  return false;
}else if(f1.cno.value=="")
{
  alert("Please Enter Contact Number");
  return false;
}else if(f1.EmailId.value=="")
{
  alert("Please Enter Email Id");
  return false;
}else if (echeck(f1.EmailId.value)==false){
		f1.EmailId.value="";
		f1.EmailId.focus();
		return false
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


function echeck(str)
{

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Invalid E-mail ID")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Invalid E-mail ID")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

		 if (str.indexOf(" ")!=-1){
		    alert("Invalid E-mail ID")
		    return false
		 }

 		 return true
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
<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<b><a href ="CMSHome.html" >Home</a></b>
<DIV class=caption2>General Information</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
  <TBODY>
  <TR>
    <TD class=tabhead width="15%"><a href="RequisitionForm.jsp">Requisition</a></TD>
    <TD class=tabhead width="15%"><a href="AdminAboutService.jsp">About Service</a></TD>
    <TD class=tabhead width="15%"><a href="CustLogin.jsp">Customer Login</a></TD>
    <TD class=tabhead width="15%"><a href="AdminShowTemplates.jsp">Templates</a></TD>
    <TD class=tabhead width="15%"><a href="LoginCheck">Administration</a></TD>
    <TD class=tabhead width="15%"><a href="AdminAboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="15%"><a href="AdminContactUs.jsp">Contact Us</a></TD>
  </TBODY></TABLE>
<TABLE class=tabformat width="20%" border=0>
<TBODY>
<TR>
<html>
<body bgcolor=lightblue>
<center><h3>Admin Registration Form</h3></center>
<form name="f1" mothod=post action="AdminReg" >
<table border="0" >
<tr>
<td class=tabhead><b>Admin Id:</b>
<td class=tabhead><input type="text" name="aid" maxlength=20></td></tr>
<td class=tabhead><b>Admin Password</b></td>
<td class=tabhead><input type=password name="apwd" maxlength=20></td></tr>
<td class=tabhead><b>Company Name</b>
<td class=tabhead><input type="text" name="cmp" maxlength=20></td></tr>
<td class=tabhead><b>Company Address</b>
<td class=tabhead><textarea name="AdminAdd" cols=20 rows=5 maxlength=20></textarea></td></tr>
<td class=tabhead><b>Contact No: </b></td>
<td class=tabhead><input name="cno" type="text" maxlength=12 onkeyup="onlyno(cno)"></td></tr>
<td class=tabhead><b>Email Id: </b></td>
<td class=tabhead><input type="text" name="EmailId" 50></td></tr>
</tr>
</td>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type=submit value="Register" onclick="return CheckInput()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value=clear ></td>
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
