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

function Close()
{

  self.close();
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

<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<DIV class=caption2>Modifying Service Details</DIV>
<form name="f1" method=post  action="UpdateService" ">
<TABLE class=tabformat width="20%" border=0>
  <TBODY>
  <TR>
<%

   Connection con=null;
   ResultSet service_rs=null;
   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   String sid=request.getParameter("sid");
   System.out.println("" + sid);
   
   service_rs=CBean.executeQuery("select *  from toservice where type_sid=" + sid);
   service_rs.next();
    
   
   
   
%>
<html>
<body bgcolor=lightblue>


<table border="0" >
<tr>
<td class=tabhead><b>Service Id:</b>
<td class=tabhead><input type="text" name="serno" readonly value=<%=service_rs.getString(1)%>></td></tr>
<td class=tabhead><b>Service Name</b></td>
<td class=tabhead><input type="text" name="servName" value="<%=service_rs.getString(2)%>" maxlength=20></td></tr>
<td class=tabhead><b>Validity: </b></td>
<td class=tabhead><input name="validity" type="text" value="<%=service_rs.getString(3)%>" maxlength=20></td></tr>
<td class=tabhead><b>Amount: </b></td>
<td class=tabhead><input type="text" name="Amt" value=<%=service_rs.getString(4)%> onkeyup="onlyno(Amt)"  maxlength=7></td></tr>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value="Update" onclick="return CheckInput()">&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value=close onclick="Close()"></td>
</tr>
</table>

<%
service_rs.close();
%>

<br>
<br>
<br>
<br>
</form>
</body>
</html>
