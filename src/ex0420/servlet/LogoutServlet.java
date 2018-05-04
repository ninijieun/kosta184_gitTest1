package ex0420.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//session가져오기 
		HttpSession session = request.getSession();
		session.invalidate(); //session값을 다 지우기 
		
		//out만들기
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("top.location.href='index.jsp'");
		out.println("</script>");
	}
	
}
