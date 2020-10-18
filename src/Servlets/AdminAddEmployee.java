package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.Employee;
import Service.AdminAddEmployeeService;

/**
 * Servlet implementation class AdminAddEmployee
 */
@WebServlet("/AdminAddEmployee")
public class AdminAddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminAddEmployee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String eid = request.getParameter("eid");
		String ename = request.getParameter("ename");
		String epno = request.getParameter("epno");
		String eaddress = request.getParameter("eaddress");
		String eemail = request.getParameter("eemail");
		String ejobtitle = request.getParameter("ejobtitle");
		String edstart = request.getParameter("edstart");
		String esalary = request.getParameter("esalary");
		String enic = request.getParameter("enic");
		doGet(request, response);
		
		Employee employee = new Employee();
		employee.setEid(eid);
		employee.setEname(ename);
		employee.setEpno(epno);
		employee.setEaddress(eaddress);
		employee.setEemail(eemail);
		employee.setEjobtitle(ejobtitle);
		employee.setEdstart(edstart);
		employee.setEsalary(esalary);
		employee.setEnic(enic);
		
		AdminAddEmployeeService aaes = new AdminAddEmployeeService();
		if(aaes.insertEmployee(employee))
			response.sendRedirect("Admin-EmployeeView.jsp");
	}

}
