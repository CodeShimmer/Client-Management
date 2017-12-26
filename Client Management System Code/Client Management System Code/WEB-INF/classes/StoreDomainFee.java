import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import CMST.*;

public class StoreDomainFee extends HttpServlet
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
  String cid=request.getParameter("txtcid");
  String amt=request.getParameter("fee");
  String no=request.getParameter("no");
  try
  {
    ConnectionBean CBean=new ConnectionBean();
    Connection con=CBean.getConnection();
    ResultSet rs=CBean.executeQuery("select ts.type_sid from toservice ts ,cust_req_details crd where crd.type_sid=ts.type_sid");
    rs.next();
    int sid=rs.getInt(1);
    System.out.println(sid + "");
    rs.close();
    int inserted=CBean.executeUpdate("insert into membership_fee values('" + cid + "'," + sid + "," + amt + ",sysdate,'" + no + "') ");
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