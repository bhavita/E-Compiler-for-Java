import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
public class EncServlet extends HttpServlet{

public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
res.setContentType("text/html");
PrintWriter out=res.getWriter();
try
{
	//ReadWrite rw=new ReadWrite();
//String ipath = req.getParameter("sfile");
//String opath = req.getParameter("tfile");


String d = req.getParameter("skey");
String n= req.getParameter("nvalue");
String imsg=req.getParameter("itxt");
String fname=req.getParameter("fname");

//FileInputStream fis = new FileInputStream(ipath);	
//FileOutputStream fos = new FileOutputStream(opath);
//byte b[] = new byte[fis.available()];
//fis.read(b);
//String msg = new String(b);
String msg=imsg;
Vector v = new Vector();
Vector cyp = new Vector();
String ct="";
String fct="";
String fname1=fname;
for(int i=0; i<msg.length(); i++)
{
int ac = msg.charAt(i) * 16;
ct = ct+ac+"#";
}
fct = ct.trim()+"$"+d+"$"+n;

HttpSession sess=req.getSession();
sess.putValue("emsg",fct);
sess.putValue("fname", fname1);
//RequestDispatcher rd=req.getRequestDispatcher("encresult.jsp?");
//rd.forward(req,res);
//fos.write(fct.getBytes());
res.sendRedirect("encresult.jsp?");
//out.println(fct);

}catch(Exception e)
{e.printStackTrace();}
}}