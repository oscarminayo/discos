package controladores;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.DiscoDAO;


@WebServlet("/EliminarDisco")
public class EliminarDisco extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DiscoDAO dao;
       
    
  @Override
  	public void init(ServletConfig config) throws ServletException {
	super.init(config);
	dao = DiscoDAO.getInstance();
  	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String parametroId = request.getParameter("id");
		int id = Integer.parseInt(parametroId);
		
		try {
			dao.eliminar(id);
			request.getRequestDispatcher("/DiscoController").forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
