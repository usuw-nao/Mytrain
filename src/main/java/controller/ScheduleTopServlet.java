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
		//getでうけとっているのはurlで受け取るのを使うため

		// イベント情報をカレンダー下に表示させる
		try {
			IventDao iventDao = DaoFactory.createIventDao();
			List<Ivent> iventList = iventDao.findAll();
			request.setAttribute("iventList", iventList);
			
			// Getパラメータとして日付情報がある場合
			String day = request.getParameter("day");
			if(day != null) {
				// 選択された日付がイベントの日だったらそのイベントを出す
				List<Ivent> planList = new ArrayList<>();
				//equalsしたいけどivent.getDayはdate型だからこれを文字列に変える
				SimpleDateFormat sdf = new SimpleDateFormat("y-MM-dd");
				for(Ivent ivent : iventList) {
					if(sdf.format(ivent.getDay()).equals(day)) {
						planList.add(ivent);
					}
				}
				
				request.setAttribute("planList", planList);
				
				// 何も予定がなかったら「予定はありません」
				if(planList.size() == 0) {
					request.setAttribute("planMessage", "予定はありません");
				}
			}

			request.getRequestDispatcher("/WEB-INF/view/ScheduleTop.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}


}
