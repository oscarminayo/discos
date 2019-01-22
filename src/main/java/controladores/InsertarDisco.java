package controladores;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daos.DiscoDAO;
import pojos.Disco;

/**
 * Servlet implementation class InsertarDisco
 */
@WebServlet("/InsertarDisco")
public class InsertarDisco extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DiscoDAO dao; 
	
	@Override
		public void init(ServletConfig config) throws ServletException {
			super.init(config);
			
			dao = DiscoDAO.getInstance();
		}
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String titulo = request.getParameter("titulo");
		String banda = request.getParameter("banda");
		String genero= request.getParameter("genero");
		String caratula = request.getParameter("caratula");
		
		Disco d =  new Disco();
		d.setTitulo(titulo);
		d.setBanda(banda);
		d.setGenero(genero);
		d.setCaratula(caratula);
		
		try {
			dao.insertar(d);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
