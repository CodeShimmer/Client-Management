<%@page import="java.sql.*,java.util.*,CMST.*" %>
<html>
<body>
<form>
<%
  
  try
  {
  
    ConnectionBean CBean=new ConnectionBean();
    Connection con=CBean.getConnection();
    String loginName=request.getParameter("cLid");
    String cPwd=request.getParameter("cPwd");
    ResultSet custrs_found=CBean.executeQuery("select cust_id from customer_login where login_id='" + loginName + "' and pwd='" + cPwd + "' ");
    if(custrs_found.next())
    {
       System.out.println("in  valid");
       String cid=custrs_found.getString(1);
       
       
       session.putValue("cid",cid);
       
       
       
       
       
       System.out.println("cid ok");
       
  %>
       <jsp:forward page="AboutDomain.jsp" />            
  <%
   }else
    {
     %>
     
       <jsp:forward page="CustLogin.jsp" />
     
     <%
     
	}

  }catch(Exception ex)
  {
     System.out.println("Error"+ ex);
  }
 %>
 </body>
 </html>