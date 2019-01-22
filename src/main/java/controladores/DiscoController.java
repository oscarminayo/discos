package controladores;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.DiscoDAO;
import pojos.Disco;

/**
 * Servlet implementation class DiscoController
 */
@WebServlet("/DiscoController")
public class DiscoController extends HttpServlet {
	DiscoDAO dao;
	private static final long serialVersionUID = 1L;
	
	
	//parametros
	
       
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	super.init(config);
    	dao = DiscoDAO.getInstance();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		request.setAttribute("discos", dao.getAll());
		request.getRequestDispatcher("privado/tabladiscos.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
