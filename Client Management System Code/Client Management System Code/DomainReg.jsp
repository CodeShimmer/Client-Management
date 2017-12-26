<script>
function CheckInput()
{

if(f1.DomainName.value=="")
{
   alert("Please Enter Domain Name");
   return false;
}else if(f1.sName.selectedIndex==0)
{
   alert("Please Select Server Type");
   return false;
}else if(f1.DName.selectedIndex==0)
{
  alert("Please Select DataBase Server");
  return false;
}else if(f1.date.value=="")
{
  alert("Please Enter Service Start Date");
  return false;
}
}

function validateDomain(dname)
{
	var oXMLHTTP = new ActiveXObject( "Microsoft.XMLHTTP" );
	var sURL = "./CheckDomain?dname=" + dname
	oXMLHTTP.open( "POST", sURL, false );
	oXMLHTTP.send();
	var  status=oXMLHTTP.responseText;
	var s=status;
	var str="a";
	
	 if(s.charAt(0)==str)
        {
		 alert(oXMLHTTP.responseText);
          f1.DomainName.value="";
	      f1.DomainName.focus();
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
<META><LINK href="css/simple.css" type=text/css type=text/css rel=stylesheet>
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<b><a href ="AboutDomain.jsp" >Home</a></b>
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
<TABLE class=tabformat width="20%" border=0>
  <TBODY>
  <TR>
<%
   Connection con=null;
   ResultSet domain_rs=null;
   
   ConnectionBean CBean=new ConnectionBean();
   con=CBean.getConnection();
   domain_rs=CBean.executeQuery("select nvl(max(domain_id),0)+1 from cust_domain_reg");
   domain_rs.next();
   String  domain_id=domain_rs.getString(1);
   domain_rs.close();
   
   
   
   String cid=session.getValue("cid")+"";
   

%>

<html>
<body bgcolor=lightblue>
<h3>Domain Registration Form</h3>
<form name="f1"  action="DomainRegister" ">

<table border="0" >
<tr>
<td class=tabhead><b>Domain Id</b>
<td class=tabhead><input type="text" name="dno" readonly value=<%=domain_id%>>

<input type=hidden name="cid" readonly value=<%=cid%>></td></tr>



<td class=tabhead><b>Domain Name</b></td>
<td class=tabhead><input type="text" name="DomainName" onblur="validateDomain(this.value);"></td></tr>
<td class=tabhead><b>Server Name</b>
<td class=tabhead><select name="sName">
<option><b>Server</b></option>
<option>Tomcat</option>
<option>JRun</option>
<option>JavaWebServer</option>
<option>WebLogicServer</option>
</select>

</td></tr>

<td class=tabhead><b>Type Of DataBase</b></td>
<td class=tabhead><select name="DName">
<option>DataBase</option>

<option>Oracle</option>
<option>Sql Server</option>
<option>DB</option>
<option>DB2</option>
</select></td></tr>
<tr>
<td class=tabhead><b>Service Start Date</b></td>
<td><input type=text name="date" size=10 readonly>
 
 
 <a href="javascript:void(0)" onclick="if(self.gfPop)gfPop.fPopCalendar(document.f1.date);
			 return false;" HIDEFOCUS tabIndex=5>
			<img name="popcal" align="absmiddle" src="Calendar\calbtn.gif" width="34" height="22" border="0" alt="">
</td>
</tr>

<tr>

<td class=tabhead><b>Domain Description</b></td>

<td><textarea name=ddesc rows=4 cols=40></textarea>

</td>
</tr>


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

<iframe width=174 height=189 name="gToday:normal:agenda.js" id="gToday:normal:agenda.js" 
src="Calendar\ipopeng.htm" scrolling="no" frameborder="0" style="visibility:visible; z-index:999; position:absolute; left:-500px; top:0px;">
</iframe>  


</body>
</html>
