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
		//session�������� 
		HttpSession session = request.getSession();
		session.invalidate(); //session���� �� ����� 
		
		//out�����
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("top.location.href='index.jsp'");
		out.println("</script>");
	}
	
}
