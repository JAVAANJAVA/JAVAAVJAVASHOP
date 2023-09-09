package servlet.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.util.UserSHA256;
import shop.member.MemberDAO;
import shop.member.MemberDTO;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/Shopping(jsp)/Member/userlogin.do")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("userlogin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getInstance();
		String userid = request.getParameter("id");
		String password = request.getParameter("password");
		//String password = UserSHA256.getSHA256(request.getParameter("password"));
		
		int row = dao.memberLogin(userid, password);
		System.out.println(row);
		if(row==1) {//세션객체 생성
			MemberDTO member = dao.memberSelect(userid);
			HttpSession session = request.getSession();
			session.setAttribute("user", userid);
			//session.setAttribute("user", member);
			session.setMaxInactiveInterval(1800);//30분
			
		}
		request.setAttribute("row", row);
		
		RequestDispatcher rd = request.getRequestDispatcher("/Shopping(jsp)/Index/index.jsp");
		rd.forward(request, response);
		
	}

}
