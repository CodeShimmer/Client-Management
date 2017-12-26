import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import CMST.*;

public class CustomerLogin extends HttpServlet
{

 public void init(ServletConfig config) throws ServletException
 {
  super.init(config);
 }

 public void destroy() { }

 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException
 {
  RequestDispatcher rd=null;
  response.setContentType("text/html");
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


       request.setAttribute("cid",cid);

       rd=request.getRequestDispatcher("AboutDomain.jsp");
    }else
    {
       rd=request.getRequestDispatcher("CustLogin.jsp");
	}


    rd.forward(request, response);
  }catch(Exception ex)
  {


System.out.println("Error"+ ex);



  }

  }



}