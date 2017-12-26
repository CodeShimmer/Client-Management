import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import CMST.*;

public class DomainFeedback extends HttpServlet
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
  int inserted;

  int cid=Integer.parseInt(request.getParameter("txtcid"));
  System.out.println(cid + "ok");


  int  did=Integer.parseInt(request.getParameter("did"));
  System.out.println(did + "ok1");

  String feedback=request.getParameter("feedback");
  try
  {
    ConnectionBean CBean=new ConnectionBean();
    Connection con=CBean.getConnection();
    ResultSet domain_rs=CBean.executeQuery("select * from domain_feedback where domain_id= " + did + " and cust_id=" + cid + "  ");


    if(domain_rs.next())
    {
     	System.out.println("in update");
     	inserted=CBean.executeUpdate("update  domain_feedback set domain_feedback='" + feedback + "' where domain_id= " + did + " and cust_id=" + cid + " ");
    }else
    {
		System.out.println("in insert");
        inserted=CBean.executeUpdate("insert into domain_feedback values(" + did + "," + cid + ",'" + feedback + "')");

    }

    System.out.println("in insert" + inserted);
    if(inserted==1)
    {
       rd.forward(request, response);
	}

  }catch(Exception ex)
  {
	  System.out.println(ex);
  }

  }



}