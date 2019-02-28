package com.cg.project.servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cg.project.beans.UserBean;
@WebServlet("/SocialInfoServlet")
public class SocialInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fruitName=request.getParameter("fruitName");
		String movieName=request.getParameter("movieName");
		String bookName=request.getParameter("bookName");
		HttpSession session=request.getSession(false);
		if(session!=null) {
			UserBean userBean=(UserBean)session.getAttribute("userBean");
			userBean.setFruitName(fruitName);
			userBean.setBookName(bookName);
			userBean.setMovieName(movieName);
			request.setAttribute("userBean",userBean);
			request.getRequestDispatcher("dataDisplayPage.jsp").forward(request, response);
		}
		else {
			response.sendRedirect("personalInfoPage.jsp");
		}
	}
}
