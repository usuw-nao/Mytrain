package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoFactory;
import dao.adult.AdultDao;
import domain.Adult;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/signup.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		boolean isError =false;

		String name = request.getParameter("name");
		request.setAttribute("name",name);//再表示用
		if(name.isBlank()) {
			request.setAttribute("nameError","名前が未入力です");
			isError = true;
		}else if(name.length() >30) {
			request.setAttribute("nameError","30字以内で入力してください");
			isError =true;
		}
		
		String nickName = request.getParameter("nick_name");
		request.setAttribute("nick_name",nickName);//再表示用
		if(nickName.isBlank()) {
			request.setAttribute("nickNameError","ニックネームが未入力です");
			isError = true;
		}else if(nickName.length() >30) {
			request.setAttribute("nickNameError","30字以内で入力してください");
			isError =true;
		}
		
		String address = request.getParameter("address");
		request.setAttribute("address",address);//再表示用
		if(address.isBlank()) {
			request.setAttribute("addressError","住所が未入力です");
			isError = true;
		}else if(address.length() >100) {
			request.setAttribute("addressError","100字以内で入力してください");
			isError =true;
		}
		
		String email = request.getParameter("email");
		request.setAttribute("email",email);//再表示用
		if(email.isBlank()) {
			request.setAttribute("emailError","メールアドレスが未入力です");
			isError = true;
		}else if(email.length() >60) {
			request.setAttribute("emailError","60字以内で入力してください");
			isError =true;
		}
		
		String stype = request.getParameter("type_id");
		Integer typeId =null;
		request.setAttribute("typeId",stype);
		if(!stype.isEmpty()) {
			try {
				typeId = Integer.parseInt(stype);
			}catch (NumberFormatException e) {
			request.setAttribute("typeIdError","タイプIDが未入力です");
			isError =true;
			}
		}
		
		String login = request.getParameter("login");
		request.setAttribute("login",login);//再表示用
		if(login.isBlank()) {
			request.setAttribute("loginError","ログインIDが未入力です");
			isError = true;
		}else if(login.length() >30) {
			request.setAttribute("loginError","30字以内で入力してください");
			isError =true;
		}
		
		String pass = request.getParameter("pass");
		String confPass = request.getParameter("confPass");
		request.setAttribute("pass",pass);//再表示用
		if(pass.isBlank()) {
			request.setAttribute("passError","パスワードが未入力です");
			isError = true;
		}else if(pass.length() >10) {
			request.setAttribute("passError","10字以内で入力してください");
			isError =true;
		}else if(!pass.equals(confPass)) {
			request.setAttribute("passError","確認用パスワードが一致していません");
		}
		
		String sage = request.getParameter("age");
		Integer age = null;
		request.setAttribute("age", sage); // 再表示用
		if (!sage.isEmpty()) {
		try {
		age = Integer.parseInt(sage);
		} catch(NumberFormatException e) {
		// 整数に変換できない場合の処理
		request.setAttribute("ageError",
		"年齢は整数で入力してください。");
		isError = true;
		}
		}
		
		String sivent = request.getParameter("ivent");
		Integer ivent = Integer.parseInt(sivent);
		
		String spoint = request.getParameter("point");
		Integer point = Integer.parseInt(spoint);

		if(isError == true) {
			request.getRequestDispatcher("/WEB-INF/view/signup.jsp")
			.forward(request, response);
			return;
		}
		try {
			Adult adult = new Adult();
			adult.setName(name);
			adult.setNickName(nickName);
			adult.setAddress(address);
			adult.setEmail(email);
			adult.setLogin(login);
			adult.setAge(age);
			adult.setTypeId(typeId);
			adult.setPass(pass);
			adult.setPoint(point);
			adult.setIvent(ivent);

			AdultDao adultDao = DaoFactory.createAdultDao();
			adultDao.insert(adult);
			// request.getRequestDispatcher("/WEB-INF/view/signupDone.jsp").forward(request,
			// response);

			response.sendRedirect(request.getContextPath() + "/SignupDone");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
