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

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dao.Dao;
import dao.Doctor;
import dao.DoctorDao;
import dao.User;
import dao.UserDao;

@WebServlet("/login/registration")
public class InsertUser extends HttpServlet {
    private static final long serialVersionUID = 1L;
    static protected final Logger LOG = LoggerFactory.getLogger(Dao.class);

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

	System.out.println(account);

	UserDao userDao = new UserDao();

	try {
	    userDao.addUsers(user);
	} catch (Exception ex) {
	    LOG.error("Can't insert user");
	    request.getRequestDispatcher("/index.html").forward(request, response);
	    return;
	}

	if (account.equals("doctor")) {
	    String specialization = request.getParameter("specialization");
	    String street = request.getParameter("street");
	    Doctor doctor = new Doctor();
	    doctor.setUserId(user.getId());
	    doctor.setSpecialization(specialization);
	    doctor.setStreet(street);
	    DoctorDao doctorDao = new DoctorDao();

	    try {
		doctorDao.addDoctors(doctor);
	    } catch (Exception ex) {
		LOG.error("Can't insert doctor");
		request.getRequestDispatcher("/index.html").forward(request, response);
		return;

	    }
	}

	request.getRequestDispatcher("/index.html").forward(request, response);
	return;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException {
	doGet(request, response);
    }

}
