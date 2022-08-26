package controller;

import java.io.IOException;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DaoFactory;
import dao.IventDao;
import dao.IventMutterDao;
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
			List<Ivent> iventList = iventDao.findAll2();

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
			//boolean isError = false;
			// 入力されたイベント名や感想を取得
			String name = request.getParameter("name");
			//request.setAttribute("name", name); // 再表示用
			//if (name.isBlank()) {
			// エラーメッセージの作成
			//request.setAttribute("nameError", "名前が未入力です。");
			//isError = true; // 入力に不備ありと判定
			//} else if(name.length() > 10) {
			//request.setAttribute("nameError", "10 字以内で入力してください。");
			//isError = true;
			//}
			
			String text = request.getParameter("text");
			//request.setAttribute("text",text); // 再表示用
			//if (text.isBlank()) {
			// エラーメッセージの作成
			//request.setAttribute("textError", "感想が未入力です。");
			//isError = true; // 入力に不備ありと判定
			//} else if(text.length() > 50) {
			//request.setAttribute("textError", "50 字以内で入力してください。");
			//isError = true;
			//}
			
			String iventName = request.getParameter("ivent_name");
			

			request.setAttribute("name", name);
			request.setAttribute("text", text);
			request.setAttribute("ivent_name", iventName);
			
			// 入力不備がある場合は、フォームを再表示し、処理を中断
			//if (isError == true) {
			//request.getRequestDispatcher("/WEB-INF/view/iventTop.jsp")
			//.forward(request, response);
			//return;
			//}
			//不備がなかったら以下
			IventMutter iventMutter = new IventMutter();
			iventMutter.setName(name);
			iventMutter.setText(text);
			iventMutter.setIventName(iventName);

			// 感想をデータベースに登録
			DaoFactory.createIventMutterDao().insert(iventMutter);

			// doGetを呼び出す(リダイレクト)
			response.sendRedirect(request.getContextPath() + "/IventTop");

		} catch (Exception e) {
			throw new ServletException(e);
		}

	}

}
