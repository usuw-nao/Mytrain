package controller;

import java.io.IOException;
import java.util.Date;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.IventDao;
import domain.Adult;
import domain.Ivent;

/**
 * Servlet implementation class IventDoServlet
 */
@WebServlet("/IventDo")
public class IventDoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sid = request.getParameter("id");
		Integer id = Integer.parseInt(sid);

		System.out.println(id);
		try {
			IventDao iventDao = DaoFactory.createIventDao();
			Ivent ivent = iventDao.findById(id);
			request.setAttribute("name", ivent.getName());
			request.setAttribute("day", ivent.getDay());
			request.setAttribute("place", ivent.getPlace());
			request.setAttribute("detail", ivent.getDetail());

			request.getRequestDispatcher("/WEB-INF/view/iventDo.jsp").forward(request, response);

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
		// 参加するを受け取る？でも受け取るもの何もなくない？ないから
		// Ivent ivent = (Ivent) request.getAttribute("ivent");
		// そもそもうけとる必要ある？→ないでｓｙ
		// 受け取るなら参加するということのもの
		// いやいや受け取ったらそれをiventMy.jspに反映させる

		// またそこに参加はできないようにしたい、バリデーションか？
		try {

			Integer eventId = Integer.parseInt(request.getParameter("id"));
			DaoFactory.createIventDao().findById(eventId);
			request.setAttribute("eventId", eventId);
			

		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			// adultテーブルのiventの回数を一つ増やす
			Adult adult = (Adult) request.getSession().getAttribute("adult");
			DaoFactory.createAdultDao().update(adult.getId());

		} catch (Exception e) {
			throw new ServletException(e);
		}

		// 最終的にはiventDone.jspにいく
		request.getRequestDispatcher("/WEB-INF/view/iventDone.jsp").forward(request, response);
	}

}
