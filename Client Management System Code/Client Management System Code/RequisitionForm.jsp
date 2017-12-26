<script>
function GetSid()
{
   f1.stype.value=f1.stype1.selectedIndex;
   return false;
   
}
function CheckInput()
{

if(f1.CustName.value=="")
{
   alert("Please Enter Cusomer name");
   return false;
   
}else if(f1.CustAdd.value=="")
{
   alert("Please Enter Customer Address");
   return false;
}else if(f1.CustCno.value=="")
{
  alert("Please Enter Contact No");
  return false;
}else if(f1.EmailId.value=="")
{
  alert("Please Email Id");
  return false;
}else if (echeck(f1.EmailId.value)==false){
		f1.EmailId.value="";
		f1.EmailId.focus();
		return false
}else if(f1.stype1.selectedIndex==0)
{
  alert("Please Select Service Name");
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
            color:skyblue;
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
    <TD class=tabhead width="15%"><a href="ServiceDetails.jsp">About Service</a></TD>
    <TD class=tabhead width="15%"><a href="CustLogin.jsp">Customer Login</a></TD>
    <TD class=tabhead width="15%"><a href="ShowTemplates.jsp">Templates</a></TD>
    <TD class=tabhead width="15%"><a href="LoginCheck">Administration</a></TD>
    <TD class=tabhead width="15%"><a href="AboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="15%"><a href="ContactUs.jsp">Contact Us</a></TD>
  </TBODY></TABLE>
<TABLE class=tabformat width="20%" border=0>
  <TBODY>
  <TR>


<%
try
{
   Connection con=null;
   ResultSet cust_rs=null;
   ResultSet trs=null;
   ConnectionBean CBean=new ConnectionBean();
   cust_rs=CBean.executeQuery("select nvl(max(cust_id),0)+1 from cust_req_details");
   cust_rs.next();
   String  cust_no=cust_rs.getString(1);
   cust_rs.close();
   
   trs=CBean.executeQuery("select service_name from toservice order by type_sid");
%>
<html>
<body bgcolor=lightblue>
<h3>Customer Requisition Form For MemberShip</h3>

<form name="f1" method=post action="Register" ">

<table border="0">
<tr>
<td class=tabhead><b>Registration Number:</b>
<td class=tabhead><input type="text" name="regno" readonly value=<%=cust_no%>></td></tr>
<td class=tabhead><b>Customer Name</b></td>
<td class=tabhead><input type="text" name="CustName" maxlength=20></td></tr>
<td class=tabhead><b>CustomerAddress</b>
<td class=tabhead><textarea name="CustAdd" cols=20 rows=5 maxlength=50></textarea></td></tr>
<td class=tabhead><b>Contact No: </b></td>
<td class=tabhead><input name="CustCno" type="text" maxlength=12  onkeyup="onlyno(CustCno)" ></td></tr>
<td class=tabhead><b>Email Id: </b></td>
<td class=tabhead><input type="text" name="EmailId" maxlength=50></td></tr>
        

<td class=tabhead><b>Type Of Service</b></td>
<td class=tabhead><select name=stype1 onchange="return GetSid()">
<option value="Service Type">Service Type</option>
<%
  while(trs.next())
  {
   %>
       <option><%=trs.getString(1)%></option>
   <%
   }
   }catch(Exception ex)
   {
     out.println("Error At " + ex);
   }
  %>
</select>
<input type=hidden name=stype>

</tr>
</td>
<tr>
<td>&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
