package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.TerminatedEmp;
import Service.TerminatedEmpEditService;

/**
 * Servlet implementation class TerminatedEmpEdit
 */
@WebServlet("/TerminatedEmpEdit")
public class TerminatedEmpEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TerminatedEmpEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String teid = request.getParameter("teid");
		String tename = request.getParameter("tename");
		String tepno = request.getParameter("tepno");
		String teemail = request.getParameter("teemail");
		String tejobtitle = request.getParameter("tejobtitle");
		String edstart = request.getParameter("edstart");
		String edend = request.getParameter("edend");
		
		TerminatedEmp temployee = new TerminatedEmp();
		temployee.setTeid(teid);
		temployee.setTename(tename);
		temployee.setTepno(tepno);
		temployee.setTeemail(teemail);
		temployee.setTejobtitle(tejobtitle);
		temployee.setEdstart(edstart);
		temployee.setEdend(edend);
		
		TerminatedEmpEditService autgs = new TerminatedEmpEditService();
		if(autgs.editTerminatedEmployee(temployee))
			response.sendRedirect("TerminatedEmpView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
