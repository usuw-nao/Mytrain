package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BlogTopDao;
import dao.DaoFactory;
import domain.BlogTop;

/**
 * Servlet implementation class BlogTopServlet
 */
@WebServlet("/BlogTop")
public class BlogTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			BlogTopDao blogTopDao = DaoFactory.createBlogTopDao();
			List<BlogTop> blogTopList = blogTopDao.findAll();

			request.setAttribute("blogTopList", blogTopList);
			request.getRequestDispatcher("/WEB-INF/view/blogTop.jsp").forward(request, response);

		} catch (Exception e) {
			throw new ServletException(e);

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
