import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;
import CMST.*;

public class CheckDomain extends GenericServlet
{
	public void service(ServletRequest request,ServletResponse response) throws ServletException, IOException
	{
			try
			{
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String dname = request.getParameter("dname");
			System.out.println(dname);
			Connection con=null;
			ConnectionBean CBean=new ConnectionBean();
			con=CBean.getConnection();

            ResultSet rs = CBean.executeQuery("Select * from CUST_DOMAIN_REG where domain_name= '" + dname + "' ");

			if (rs.next())
			{
		    	out.println("already exists");
		    }

	}
		catch(Exception e){ System.out.println("error"+e.getMessage());}
	}

}
