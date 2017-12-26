import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.io.*;

import CMST.*;
public class UpdateServiceDetails extends HttpServlet
{

 public void init(ServletConfig config) throws ServletException
 {
  super.init(config);
 }

 public void destroy() { }

 protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException
 {

  PrintWriter out=response.getWriter();

  //RequestDispatcher rd=request.getRequestDispatcher("DetailsInserted.jsp");
  response.setContentType("text/html");
String serno=request.getParameter("serno");
  String servName=request.getParameter("servName");
  String validity=request.getParameter("validity");
  int  amt=Integer.parseInt(request.getParameter("Amt"));
  try
  {

    ConnectionBean CBean=new ConnectionBean();

    Connection con=CBean.getConnection();
    int inserted=CBean.executeUpdate("update toservice set service_name='"+ servName + "',validity='" + validity + "',amount=" + amt + " where type_sid="+ serno + " ");

    if(inserted==1)
    {

	     out.println("<html>
	     <script>
	     function check()
	     {
			 self.close();
			 opener.location='ViewServiceDetails.jsp';
			 }
			 </script>
			 <center>
			 <h1><b>Details Updated Successfully</b></h1>
			 </center>
			 </html>");
         out.println("<center><input type=button value='Close' onclick='return check()'></center>");
//     rd.forward(request, response);

	}else
	{
System.out.println("Not Updated");
}


  }catch(Exception ex)
  {
System.out.println(ex);

   }

  }



}