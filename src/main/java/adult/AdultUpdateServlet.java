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
		request.setCharacterEncoding("UTF-8");
		
		// フォームでの入力値の取得
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String nickName = request.getParameter("nick_name");
		String login = request.getParameter("login");

		// バリデーションを行う
		boolean isError = false;
		
		if (address.isBlank()) {
			request.setAttribute("addressError", "住所が未入力です");
			isError = true;
		}
		
		if (email.isBlank()) {
			request.setAttribute("emailError", "Emailアドレスが未入力です");
			isError = true; // 入力に不備ありと判定
		} else if (email.length() > 50) {
			request.setAttribute("emailError", "50 字以内で入力してください。");
			isError = true;
		}
		
		if (nickName.isBlank()) {
			request.setAttribute("nickNameError", "ニックネームが未入力です");
			isError = true; // 入力に不備ありと判定
		} else if (nickName.length() > 10) {
			request.setAttribute("nickNameError", "10 字以内で入力してください。");
			isError = true;
		}

		if (login.isBlank()) {
			request.setAttribute("loginError", "ログインIDが未入力です");
			isError = true; // 入力に不備ありと判定
		} else if (login.length() > 10) {
			request.setAttribute("loginError", "10 字以内で入力してください。");
			isError = true;
		}
		
		
		// バリデーションに不備あり：フォーム再表示
		if(isError) {
			// 再表示用データ
			request.setAttribute("address", address);
			request.setAttribute("email", email);
			request.setAttribute("nickName", nickName);
			request.setAttribute("login", login);
			
			request.getRequestDispatcher("/WEB-INF/view/adult/adultUpdate.jsp").forward(request, response);
			return;
		}

		
		// バリデーションに不備がなければ、
		// 1. セッションの上書きをしよう
		// 2. データベースの更新
		Adult adult = (Adult) request.getSession().getAttribute("adult");
		adult.setAddress(address);
		adult.setNickName(nickName);
		adult.setEmail(email);
		adult.setLogin(login);
		request.getSession().setAttribute("adult", adult);

		try {
			DaoFactory.createAdultDao().update(adult.getId(), adult.getLogin(), adult.getEmail(), adult.getNickName(),
					adult.getAddress());

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/AdultUpdateDone");

	}

}
