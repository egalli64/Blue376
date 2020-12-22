package blue;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
//import java.util.Date;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.User;
import dao.UserDao;

@WebServlet("/login/registration")
public class InsertUser extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {

	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String surname = request.getParameter("surname");
	String birthday = request.getParameter("birthday");
	LocalDate parsedDate = LocalDate.parse(birthday);
	String phoneNumber = request.getParameter("phoneNumber");
	String account = request.getParameter("account");
	String password = request.getParameter("password");

	User user = new User();
	user.setName(name);
	user.setSurname(surname);
	user.setEmail(email);
	user.setPhoneNumber(phoneNumber);
	user.setBirthday(parsedDate);
	user.setPassword(password);
	user.setAccount(account);

	UserDao userDao = new UserDao();
	userDao.addUsers(user);

	request.getRequestDispatcher("/index.html").forward(request, response);
	return;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	doGet(request, response);
    }

}
