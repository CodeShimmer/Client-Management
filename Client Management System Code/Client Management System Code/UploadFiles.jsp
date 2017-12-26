<%@page import="org.apache.commons.fileupload.*,java.util.*,java.io.*"%>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
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
<DIV class=caption1>DOMAIN SERVICE MANAGEMENT SYSTEM</DIV>
<b><a href ="AboutDomain.jsp" >Back</a></b>
<DIV class=caption2>Customer Information</DIV>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0 >
  <TBODY>
  <TR>
	<TD class=tabhead width="10%"><a href="CustServiceDetails.jsp">About Service</a></TD>
	    <TD class=tabhead width="13%"><a href="DomainFeedbackDetails.jsp">Domain Feed Back</a></TD>
	    <TD class=tabhead width="10%"><a href="CustShowTemplates.jsp">Templates</a></TD>
	    <TD class=tabhead width="10%"><a href="CustAboutUs.jsp">About Us</a></TD>
    <TD class=tabhead width="10%"><a href="CustContactUs.jsp">Contact Us</a></TD>
        </TR>
    

  </TBODY></TABLE>

<%
   // JSP to handle  uploading
   String domain=request.getParameter("dname");
   
   // Create a new file upload handler 
   DiskFileUpload upload = new DiskFileUpload();
  
  
  // parse request
    
    
   List items = upload.parseRequest(request);
   // get uploaded file 
   FileItem  file = (FileItem) items.get(1);
   
   
   System.out.println(file.getName());
   
   
   
   String source = file.getName();
   
   // get taget filename
  
   
   
   File DestFile=new File(source);
   
   
   String Dest=DestFile.getName();
   
   
   System.out.println(source + "sorce");
   
   
   boolean dm=(new File("D:\\Domains\\"+  domain)).mkdir();
   
   
   System.out.println(dm + "Domain Created");
   
   System.out.println("D:\\Domains\\"+  domain + "\\" + Dest   );
   
   
   String d=new Date().toString();
   
   
   
   System.out.println(d);
    
   String dt=d.substring(8,10)+"-"+d.substring(4,7)+"-"+d.substring(24,28);
   
   
   System.out.println(dt);
   
   boolean date=(new File("D:\\Domains\\"+  domain + "\\" + dt)).mkdir();
   System.out.println(date + "tr");
   
   
   File outfile = new File("D:\\Domains\\"+  domain + "\\" + dt + "\\" + Dest );
   file.write(outfile);
   
   
   
   
  %>
 <TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
   <TBODY>
   <TR>
   <TD><h1>File Uploaded Successfully</h1></td>
   </TR>
 
</TBODY></TABLE>
<br>
<br>
<br>
<TABLE class=tabformat cellSpacing=1 cellPadding=2 width="100%" border=0>
  <TR>
    <TD class=tabhead width="10%"><H4><center>This is a Customer Domain  Registration and Service Management System Site</center></h4></TD>
 </TR>
  <tr>
    <TD class=tabhead width="35%"><marquee><b>24 Hours Application dovelopment and Hosting Service </b></marquee></TD>
  </tr>
</TABLE>
</BODY></HTML>
