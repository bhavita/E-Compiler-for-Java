import javax.servlet.*;
import keygen.*;
import java.io.*;
public class GenerateServlet extends GenericServlet
{
	
PrintWriter pw;
	
	

	String pstr = "";
	String qstr = "";
	String s, output;
	long p,q,pi,e,val,ds,r,qd;;
	static long d,n;
		int i,cnt;
	long rst[] = new long[100];
	long div[] = new long[100];
	long qud[] = new long[100];
	long rem[] = new long[100];
	String fe = "";
	String fd = "";
	String fn = "";
	String PubKey = "";
	String PriKey = "";

	public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException
	{
	
prime pm = new prime();
calculation cal = new calculation();
pw=res.getWriter();
String  prime_one=req.getParameter("first");		
	String  prime_two=req.getParameter("second");
                p = Long.parseLong( prime_one);
	q = Long.parseLong(prime_two);
System.out.println(p);
System.out.println(q);
     
if(p==q)
{

String msg1="PRIME NUMBERS SHOULD NOT BE EQUAL";
RequestDispatcher view= req.getRequestDispatcher("encrypt.jsp?ms1="+msg1);
view.forward(req,res);
//res.sendRedirect("encrypt.jsp"?"ms1="msg1);
}
else if(!pm.checkPrime(p)){
String msg2="PLEASE ENTER P AS A PRIME NUMBER";
//res.sendRedirec```t("encrypt.jsp?ms2="+msg2);
RequestDispatcher view= req.getRequestDispatcher("encrypt.jsp?ms2="+msg2);
view.forward(req,res);

}
else if(!pm.checkPrime(q)){
String msg3="PLEASE ENTER Q AS A PRIME NUMBER";
//res.sendRedirect("encrypt.jsp?ms3="+msg3);
RequestDispatcher view= req.getRequestDispatcher("encrypt.jsp?ms3="+msg3);
view.forward(req,res);

}
else if((!pm.checkPrime(p)) && (!pm.checkPrime(q)))
			{
			
	String msg4="PLEASE ENTER P AND Q VALUES AS PRIME NUMBERS";
	RequestDispatcher view= req.getRequestDispatcher("encrypt.jsp?ms4="+msg4);
view.forward(req,res);

	//res.sendRedirect("encrypt.jsp?ms4="+msg4);
	}
else if(pm.checkPrime(p) && pm.checkPrime(q))

  		{		
  			 n=p*q;
  			 pi=(p-1)*(q-1);
  			 e=cal.calE(pi,p,q);
  			 System.out.println("e :"+e);

			qd=pi/e;
   			r=pi%e;
   			cnt=0;
   			rst[cnt]=pi;
   			div[cnt]=e;
   			qud[cnt]=qd;
   			rem[cnt]=r;
			System.out.println("val	ds	qd	r");
   			do
   			{
				cnt++;
				val=div[cnt-1];	//val=e
				ds=rem[cnt-1];//ds = r
				qd=val/ds; // qd=e/r
				r=val%ds;  //  r=e%r
				System.out.println(val+"\t"+ds+"\t"+qd+"\t"+r);
				if(r != 0)
				{
					 rst[cnt]=val;		//e
					 div[cnt]=ds;		//r
					 qud[cnt]=qd;		//e/r
					 rem[cnt]=r; 		//e%r
				}
   			}while(r != 0);
   			long p1,q1,s1,t1,p2,q2,s2,t2,t;

			p1=rst[cnt-1];
			q1=-qud[cnt-1];
			s1=div[cnt-1];
			t=1;

			for(i=(cnt-2);i>=0;i--)
			{
				 p2=rst[i];
				 q2=-qud[i];
				 s2=div[i];
				 if(s1==rem[i])
				 {
				   if(p1==s2)
	   				{
						p1=p2;
						t1=t;
						t=q1;
						q1=t1+(q1*q2);
						s1=s2;
	   				}
				 }
			}
			if(q1<0)
				 d=pi+q1;
			else
				 d=q1;
				fe = String.valueOf(e);
				fd = String.valueOf(d);
				fn = String.valueOf(n);
//res.sendRedirect("encrypt.jsp?pkey="+fe+"skey="+fd+"nval="+fn);		
RequestDispatcher view= req.getRequestDispatcher("encrypt.jsp?pkey="+fe+"&skey="+fd+"&nval="+fn);
view.forward(req,res);

}

			
}
}