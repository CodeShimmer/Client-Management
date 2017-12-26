<%@page import="java.sql.*,CMST.*" %>
<html>
<form>
<%
   ConnectionBean CBean=new ConnectionBean();
   
   Connection con=null;
   ResultSet rs=null;
   String cid=request.getParameter("cid");
   rs=CBean.executeQuery("select * from membership_fee where cust_id='" + cid + "' ");
   if(rs.next())
   {
      response.sendRedirect("CustomerAccept.jsp?cid=" + cid );
    }else
    {
      response.sendRedirect("FeeError.jsp");
    }
    
   
   
   
   
%>

</form>
</body>
</html>
