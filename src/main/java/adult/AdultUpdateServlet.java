package adult;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import domain.Adult;

/**
 * Servlet implementation class UpdateAdultServlet
 */
@WebServlet("/AdultUpdate")
public class AdultUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/adult/adultUpdate.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// フォームでの入力値を取得して、整理？adultに入れていく？
		Adult adult = new Adult();
		adult.setId(Integer.parseInt(request.getParameter("id")));
		adult.setAddress(request.getParameter("address"));
		adult.setEmail(request.getParameter("email"));
		adult.setNickName(request.getParameter("nick_name"));
		adult.setLogin(request.getParameter("login_id"));
		
		//セッションの上書きをしよう
		request.getSession().setAttribute("adult", adult);		
		

		try {
			DaoFactory.createAdultDao().update(adult.getId(),adult.getAddress(), adult.getEmail(), adult.getNickName(),
					adult.getLogin());

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath()+"/AdultInf");

	}

}
