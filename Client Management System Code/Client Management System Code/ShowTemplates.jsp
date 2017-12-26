<script language="javascript">


function ShowTemplate(tempval)
{
  
  if(tempval==1)
  {
  
   window.open("./Temp1/index.htm","popup"," width=800,height=600");
   
   
  }else if(tempval==2)
  
  {
   window.open("./Temp2/index.htm","popup"," width=1000,height=600");
  }else if(tempval==3)
    {
     window.open("./Temp3/index.htm","popup"," width=1000,height=600");
  }else if(tempval==4)
  {
   window.open("./Temp4/index.htm","popup"," width=1000,height=600");
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
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
  <TD><img src="IMAGES/Templ5.jpg" heigth="60" width="220"></img><TD><img src="IMAGES/Templ7.jpg" heigth="360" width="250"></img></td>
  <TD><img src="IMAGES/Templ8.jpg" heigth="450" width="200"></img></td>
  </TR>
  </TD>
  <TR>
  


    <TD><a style={cursor:hand} onclick="ShowTemplate(1)"><b>Template 1</b></a></td>
  </TR>
  <TR>
    <TD><a style={cursor:hand} onclick="ShowTemplate(2)"><b>Template 2</b></a></td>
  </TR>
  <TR>
    <TD><a style={cursor:hand} onclick="ShowTemplate(3)"><b>Template 3</b></a></td>
  </TR>
  <TR>
    <TD><a style={cursor:hand} onclick="ShowTemplate(4)"><b>Template 4</b></a></td>
  </TR>
</TBODY></TABLE>
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


</BODY></HTML>
