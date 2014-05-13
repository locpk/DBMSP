package bf;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String MANAGER_JSP = "/Manager.jsp";
	private Connection connect = null;
	private Statement statement = null;
	private Statement preparedStatement = null;
	private ResultSet resultSet = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String forward="";
		// Get a map of the request parameters
		String univ = request.getParameter("Submit");
		System.out.print(univ);

		if(univ.equals("submit")){
		
		boolean st = false;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String db = "bay_flower";
			String user = "root";
			// Setup the connection with the DB
			Connection connect = DriverManager
					.getConnection("jdbc:mysql://localhost/"+db+"?"
							+ "user="+ user +"&password=375421");
			PreparedStatement ps = connect.prepareStatement("select * from manager where manager_id=? and password=?");
			ps.setString(1,request.getParameter("userName"));
			ps.setString(2,request.getParameter("Password"));
			ResultSet resultSet = ps.executeQuery();
			st = resultSet.next();
			if(st)
				forward = MANAGER_JSP;
		}catch (Exception e) {
				e.printStackTrace();
		}
			
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);

	}

}
