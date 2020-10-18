package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Entities.CustomizeCake;
import Service.CustomizeAddCakeService;

/**
 * Servlet implementation class CustomizeAddCake
 */
@WebServlet("/CustomizeAddCake")
public class CustomizeAddCake extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomizeAddCake() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String img=request.getParameter("img");
		String ccname=request.getParameter("ccname");
		String uname = request.getParameter("uname");
		String caddmore=request.getParameter("caddmore");
		String cshape=request.getParameter("cshape");
		String cflavour=request.getParameter("cflavour");
		String csize=request.getParameter("csize");
		String ccolor=request.getParameter("ccolor");
		String cdescription=request.getParameter("cdescription");
		
		CustomizeCake cc =new CustomizeCake();
		
		cc.setImg(img);
		cc.setCcname(ccname);
		cc.setUname(uname);
		cc.setCaddmore(caddmore);
		cc.setCshape(cshape);
		cc.setCflavour(cflavour);
		cc.setCsize(csize);
		cc.setCcolor(ccolor);
		cc.setCdescription(cdescription);
		cc.setDecision("pending");
	
		
		CustomizeAddCakeService cacc= new CustomizeAddCakeService();
		if(cacc.customizeAddCake(cc))
			response.sendRedirect("CustomizeCakeView.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
