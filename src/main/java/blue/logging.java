package blue;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User;
import dao.UserDao;

/**
 * Servlet implementation class logging
 */
@WebServlet("/login/logging")
public class logging extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final Logger LOG = Logger.getGlobal();

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	HttpSession session = request.getSession();

	String email = request.getParameter("user");
	String password = request.getParameter("password");
	String optionsOutlined = request.getParameter("options-outlined");

	LOG.info("option is " + optionsOutlined);

	if (email == null || email.isBlank() || password == null || password.isBlank()) {
	    LOG.warning("No user passed as parameter!");
	    request.getRequestDispatcher("/indexSecond.jsp").forward(request, response);
	} else {
	    UserDao users = new UserDao();

	    List<User> list = users.getUsers(email, password);

	    if (list.size() == 1) {
		LOG.info("username is " + email);
		User user = list.get(0);
		String account = user.getAccount();

		session.setAttribute("user", email);
		System.out.println("account is : " + account);
		if (account.equals("patient")) {
		    request.getRequestDispatcher("loggedAsPatient.jsp").forward(request, response);
		    return;
		}
		else if(account.equals("doctor")) {
		    request.getRequestDispatcher("loggedAsDoctor.jsp").forward(request, response);
		    return;
		}
		
	    } else {
		request.getRequestDispatcher("/index.html").forward(request, response);
		LOG.warning("User not found");
	    }

	}

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
    }

}
