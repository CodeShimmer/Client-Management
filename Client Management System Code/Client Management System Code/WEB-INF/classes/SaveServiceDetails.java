import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import CMST.*;
public class SaveServiceDetails extends HttpServlet
{

 public void init(ServletConfig config) throws ServletException
 {
  super.init(config);
 }

 public void destroy() { }

 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException
 {

  RequestDispatcher rd=request.getRequestDispatcher("DetailsInserted.jsp");
  response.setContentType("text/html");
  String serno=request.getParameter("serno");
  String servName=request.getParameter("servName");
  String validity=request.getParameter("validity");
  int  amt=Integer.parseInt(request.getParameter("Amt"));
  try
  {

    ConnectionBean CBean=new ConnectionBean();

    Connection con=CBean.getConnection();
    int inserted=CBean.executeUpdate("insert into toservice values('" + serno + "','" + servName + "','" + validity + "'," + amt + ") ");
    if(inserted==1)
    {

     rd.forward(request, response);


	}


  }catch(Exception ex)
  {

   }

  }



}