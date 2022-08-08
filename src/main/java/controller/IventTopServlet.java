package controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoFactory;
import dao.IventDao;
import dao.IventMutterDao;
import domain.Adult;
import domain.Ivent;
import domain.IventMutter;

/**
 * Servlet implementation class IventTopServlet
 */
@WebServlet("/IventTop")
public class IventTopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// イベント情報をDBから取ってきて表示させる
			IventDao iventDao = DaoFactory.createIventDao();
			List<Ivent> iventList = iventDao.findAll();

			// 感想をDBから取ってきて表示させる
			IventMutterDao iventMutterDao = DaoFactory.createIventMutterDao();
			List<IventMutter> iventMutterList = iventMutterDao.findAll();

			request.setAttribute("iventList", iventList);
			request.setAttribute("iventMutterList", iventMutterList);
			request.getRequestDispatcher("/WEB-INF/view/iventTop.jsp").forward(request, response);

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
			// 入力されたイベント名や感想を取得
			String name = request.getParameter("name");
			String text = request.getParameter("text");
			String iventName=request.getParameter("ivent_name");


			// 感想をデータベースに登録
			DaoFactory.createIventMutterDao().insert(null);

			// doGetを呼び出す(リダイレクト)
			response.sendRedirect("IventTop");

		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

}
