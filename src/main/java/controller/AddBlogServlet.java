package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BlogTopDao;
import dao.DaoFactory;
import domain.BlogTop;

/**
 * Servlet implementation class AddBlogServlet
 */
@WebServlet("/AddBlog")
public class AddBlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/addBlog.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String text = request.getParameter("text");
		String idType = request.getParameter("id_type");

		BlogTop blogTop = new BlogTop();
		blogTop.setName(name);
		blogTop.setTitle(title);
		blogTop.setText(text);
		blogTop.setIdType(idType);
		try {
			BlogTopDao blogTopDao = DaoFactory.createBlogTopDao();
			blogTopDao.insert(blogTop);

			response.sendRedirect(request.getContextPath() + "/BlogTop");
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

}
