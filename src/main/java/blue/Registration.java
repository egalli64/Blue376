package blue;

import java.io.IOException;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/login/registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getGlobal();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		HttpSession session = request.getSession();

		String user = request.getParameter("user");
		String password = request.getParameter("password");
		String optionsOutlined = request.getParameter("options-outlined");

		if (optionsOutlined.equals("doctorbutton")) {
			request.getRequestDispatcher("doctorRegistration.jsp").forward(request, response);
		}
		else if (optionsOutlined.equals("patientbutton")) {
			request.getRequestDispatcher("patientRegistration.jsp").forward(request, response);
		}

//		request.getRequestDispatcher("patientRegistration.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
