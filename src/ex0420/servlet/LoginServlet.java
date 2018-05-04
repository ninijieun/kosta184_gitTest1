package ex0420.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**LoginServlet.java
	  인증을 성공하면  
	  //이동한다. (index.jsp이동한다)
	         <script>
	            top.location.href="index.jsp";
	         </script>*/

public class LoginServlet extends HttpServlet { //Servle문서를 만들기 위해서 상속받는다.
	String dbId="nini", dbPwd="jji";

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//out가지고 오기 
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		//받아오는 변수들 받기
		String id=request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		
		if(dbId.equals(id) && dbPwd.equals(pwd)) {
			
			session.setAttribute("userId", id);
			session.setAttribute("time",System.nanoTime());
			
			out.println("<script>");
			out.println("top.location.href='index.jsp'");
			out.println("</script>");
		}
	}
	
	

}
