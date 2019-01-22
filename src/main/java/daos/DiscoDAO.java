package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import pojos.ConnectionManager;
import pojos.Disco;

public class DiscoDAO{
		private static DiscoDAO INSTANCE = null;
		
		//constructor privado solo accesible mediante getInstance();
		
		
		public synchronized static DiscoDAO getInstance() {
			if(INSTANCE == null) {
				INSTANCE = new DiscoDAO();
			}
			
			return INSTANCE;
			
		}
	
		public ArrayList<Disco> getAll() {
			
			ArrayList<Disco> discos = new ArrayList<Disco>();
			Disco d = new Disco();
			
			String sql = "Select id, titulo, banda, genero, caratula FROM discos ORDER BY id ASC LIMIT 500";
			
			try (Connection conn = ConnectionManager.getConnection();
					PreparedStatement pst = conn.prepareStatement(sql)) {
				
				try(ResultSet rs = pst.executeQuery()) {
					while(rs.next()) {
						d = new Disco();
						d.setId(rs.getInt("id"));
						d.setTitulo(rs.getString("titulo"));;
						d.setBanda(rs.getString("banda"));
						d.setGenero(rs.getString("genero"));
						d.setCaratula(rs.getString("caratula"));
						
						discos.add(d);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return discos;
		}
		
		
		public boolean insertar(Disco d) throws SQLException {
			
			boolean resul = false;
			
			String sql = "INSERT INTO discos (titulo, banda, genero, caratula) VALUES (?,?,?,?);";
			try (Connection conn = ConnectionManager.getConnection();
					PreparedStatement pst = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)){
							
					pst.setString(1, d.getTitulo());
					pst.setString(2, d.getBanda());
					pst.setString(3, d.getGenero());
					pst.setString(4, d.getCaratula());				
					
					int affectedRows = pst.executeUpdate();
					if(affectedRows == 1) {
						ResultSet rs = pst.getGeneratedKeys();
						if(rs.next()) {
							int id = rs.getInt(1);
							d.setId(id);
						}
						resul = true;
					}
			
			}	
			
			return resul;
			
		}
}
