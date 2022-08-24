package adult;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoFactory;
import dao.adult.AdultDao;
import domain.Adult;

/**
 * Servlet implementation class DeleteAdultServlet
 */
@WebServlet("/DeleteAdult")
public class DeleteAdultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String strId = request.getParameter("id");
			Integer id = Integer.parseInt(strId);

			AdultDao adultDao = DaoFactory.createAdultDao();
			Adult adult = adultDao.findById(id);

			HttpSession session = request.getSession(true);
			session.removeAttribute("strId");
			request.setAttribute("adult", adult);
			request.getRequestDispatcher("/WEB-INF/view/deleteAdult.jsp").forward(request, response);

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
		request.setCharacterEncoding("UTF-8");
		String strId = request.getParameter("id");
		Integer id = Integer.parseInt(strId);

		Adult adult = new Adult();
		adult.setId(id);

		try {
			AdultDao adultDao = DaoFactory.createAdultDao();
			adultDao.delete(adult);
			request.getRequestDispatcher("/WEB-INF/view/deleteAdultDone.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

}
