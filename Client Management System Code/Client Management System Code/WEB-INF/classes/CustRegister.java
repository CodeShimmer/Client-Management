import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import CMST.*;

public class CustRegister extends HttpServlet
{
 public void init(ServletConfig config) throws ServletException
 {
  super.init(config);
 }
 public void destroy() { }
 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException
 {
  RequestDispatcher rd=request.getRequestDispatcher("Inserted.jsp");
   RequestDispatcher rd1=request.getRequestDispatcher("Error.jsp");
  response.setContentType("text/html");
  String cregno=request.getParameter("regno");
  String CustName=request.getParameter("CustName");
  String CustAdd=request.getParameter("CustAdd");
  String CustCno=request.getParameter("CustCno");
  String EmailId=request.getParameter("EmailId");
  String stype=request.getParameter("stype");
  try
  {
    ConnectionBean CBean=new ConnectionBean();
    int inserted=CBean.executeUpdate("insert into cust_req_details values(" + cregno + ",'" + CustName + "','" + CustAdd + "','" + CustCno + "','" + EmailId + "'," + stype + ") ");
    if(inserted==1)
    {
      rd.forward(request, response);
	}else
	{
	  rd1.forward(request, response);
	}


  }catch(Exception ex)
  {
      System.out.println("erro" + ex);
   }

  }



}