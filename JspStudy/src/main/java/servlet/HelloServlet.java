package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		System.out.println("HelloServlet init 실행...");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<meta charset='utf-8'>");
		writer.println("<title>HelloServlet</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3>HelloServlet</h3>");
		writer.println("<p>");
		writer.println("HelloServlet 컴포넌트 실행완료...<br>");
		writer.println("<a href='/JspStudy/Sub8/WelcomeServlet.do'>WelcomeServlet 요청</a><br/>");
		writer.println("<a href='/JspStudy/Sub8/1_Servlet.jsp'>Servlet.jsp 요청</a><br/>");
		writer.println("</p>");
		writer.println("</body>");
		writer.println("</html>");

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
