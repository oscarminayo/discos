package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
			
			String sql = "Select id, titulo, banda, genero, caratula FROM discos";
			
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
}