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

			// Getパラメータとして日付情報がある場合
			String day = request.getParameter("day");
			String login = request.getParameter("login");
			
	if (day != null) {
				Adult adult = (Adult) request.getSession().getAttribute("adult");
		List<Ivent> planList = 
		DaoFactory.createIventDao().findByLoginAndDay(adult.getLogin(), day);
		if(adult.getLogin() ==login) {
			// イベントをリクエストスコープに格納
			request.setAttribute("planList", planList);
			
		}
			// もし日付がある場合は、日付に対応する参加イベントを取得
			//if (rday != null) {
				// 選択された日付がイベントの日だったらそのイベントを出す
				//List<Ivent> planList = new ArrayList<>();
				// equalsしたいけどivent.getDayはdate型だからこれを文字列に変える
				//SimpleDateFormat sdf = new SimpleDateFormat("y-MM-dd");
				//for (Ivent ivent : iventList) {
					//if (sdf.format(ivent.getDay()).equals(rday)) {
					//	planList.add(ivent);
					//}

					//request.setAttribute("planList", planList);

					// 何も予定がなかったら「予定はありません」
					//if (planList.size() == 0) {
					//	request.setAttribute("planMessage", "予定はありません");

					//}
				}
				request.getRequestDispatcher("/WEB-INF/view/ScheduleTop.jsp").forward(request, response);
			//}
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

		try {
			String rday = request.getParameter("rday");
			if (rday != null) {
				Adult adult = (Adult) request.getSession().getAttribute("adult");
				List<Ivent> iventList = DaoFactory.createIventDao().findByLoginAndDay(adult.getLogin(), rday);
				// イベントをリクエストスコープに格納
				request.setAttribute("iventList", iventList);
				response.sendRedirect(request.getContextPath() + "/ScheduleTop");

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
