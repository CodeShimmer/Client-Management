<%@page import="java.sql.*,CMST.*" %>
<script>
function CheckInput()
{
  if(f.fee.value=="")
  {
    alert("Please Enter Amount");
    return false;
  }else if(f.no.value=="")
  {
    alert("Please Enter Cheque/DD Number, It Is Cash Payment Please Type Cash");
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
<DIV class=caption1><font face="Verdana, Arial, Helvetica, sans-serif">DOMAIN SERVICE 
  MANAGEMENT SYSTEM</font></DIV>
<form name=f action="StoreFee">
  <b><a href ="AdminAboutService.jsp" ><font face="Verdana, Arial, Helvetica, sans-serif">Back</font></a></b> 
  <DIV class=caption2><font face="Verdana, Arial, Helvetica, sans-serif">Administration 
    Information</font></DIV>
  <TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
    <TBODY> 
    <TR> 
      <TD class=tabhead width="20%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="CustomerDetails.jsp">Requested 
        Customer Details</a></font></TD>
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="AdminAboutService.jsp">About 
        Service</a></font></TD>
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="FeedBack.jsp">FeedBack</a></font></TD>
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="AdminShowTemplates.jsp">Templates</a></font></TD>
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="AdminAboutUs.jsp">About 
        Us</a></font></TD>
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><a href="AdminContactUs.jsp">Contact 
        Us</a></font></TD>
    </TBODY>
  </TABLE>
  <center>
    <h3><font face="Verdana, Arial, Helvetica, sans-serif">MEMBERSHIP FEE DETAILS</font></h3>
    <font face="Verdana, Arial, Helvetica, sans-serif">
    <%
  String cid=request.getParameter("cid");
  Connection con=null;
 ResultSet cust_rs=null;
 ConnectionBean CBean=new ConnectionBean();
 con=CBean.getConnection();
 cust_rs=CBean.executeQuery("select amount from toservice  where type_sid=(select type_sid  from cust_req_details where cust_id='" + cid + "') ");
 cust_rs.next();
 String Amount=cust_rs.getString(1);
 cust_rs.close();
 
  
  
%>
    </font>
    <table border="0" >
      <tr> 
        <td class=tabhead>
          <h3><font face="Verdana, Arial, Helvetica, sans-serif">Customer Id: 
            <%=cid%></font></h3>
        <td><font face="Verdana, Arial, Helvetica, sans-serif">
          <input type=hidden value=<%=cid%> name=txtcid>
          </font></td>
      </tr>
      <tr> 
        <td class=tabhead> <font face="Verdana, Arial, Helvetica, sans-serif"><b>Enter 
          Amount:</b></font>
        <td><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;
          <input type=text readonly name=fee value=<%=Amount%>>
          </font>
      </tr>
      <tr> 
        <td class=tabhead> <font face="Verdana, Arial, Helvetica, sans-serif"><b>Cheque  No:</b></font> 
        <td><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;
          <input type=text name=no maxlength=15>
          </font>
      </tr>
      <tr> 
        <td><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp; 
          <input type=submit value="Save" onClick=" return CheckInput()" name="submit">
          </font>
        <td><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp; 
          <input type=Reset value="Clear" name="Reset">
          &nbsp;&nbsp; </font>
      </tr>
      <tr> <br>
        <br>
        <br>
        <br>
      </tr>
    </table>
  </center>
  <font face="Verdana, Arial, Helvetica, sans-serif"><br>
  <br>
  <br>
  </font>
  <TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
    <TR> 
      <TD class=tabhead width="10%"><font face="Verdana, Arial, Helvetica, sans-serif"><H4></font>
        <center>
          <font face="Verdana, Arial, Helvetica, sans-serif">This is a Customer 
          Domain Registration and Service Management System Site</font>
        </center>
      </TD>
    </TR>
    <tr> 
      <TD class=tabhead width="35%"><font face="Verdana, Arial, Helvetica, sans-serif"><marquee><b>24 
        Hours Application dovelopment and Hosting Service </b></marquee></a></font></TD>
    </tr>
  </TABLE>

</form>
</BODY></HTML>
