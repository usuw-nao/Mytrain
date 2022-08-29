package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

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
 * Servlet implementation class ScheduleTopServlet
 */
@WebServlet("/ScheduleTop")
public class ScheduleTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// イベント情報をカレンダー下に表示させる
		try {
			IventDao iventDao = DaoFactory.createIventDao();
			List<Ivent> iventList = iventDao.findAll2();
			request.setAttribute("iventList", iventList);
		} catch (Exception e) {
			throw new ServletException(e);
		}

		// Getパラメータとして日付情報がある場合
		// GETパラメータとして日付を受け取る
		String sday = request.getParameter("sday");

		// もし日付がある場合は、日付に対応する参加イベントを取得
		try {
			if (sday != null) {

				Adult adult = (Adult) request.getSession().getAttribute("adult");
				List<Ivent> planList = DaoFactory.createIventDao().findByLoginAndDay(adult.getLogin(), sday);
				// イベントをリクエストスコープに格納
				request.setAttribute("planList", planList);
				request.getRequestDispatcher("/WEB-INF/view/ScheduleTop.jsp").forward(request, response);

			} else {
				request.setAttribute("ErrorM", "参加予定イベントはありません");
				request.getRequestDispatcher("/WEB-INF/view/ScheduleTop.jsp").forward(request, response);
				return;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
