package pojos;

import java.sql.Blob;

public class Disco {

		private int id;
		private String titulo;
		private String banda;
		private String genero;
		private String caratula;
		

		public Disco() {
			super();
			id = -1;
			titulo = "titulo";
			banda = "banda";
			genero = "genero";
			caratula = "caratula";
		}
		
		public Disco(int id, String titulo, String banda, String genero, String caratula) {
			this();
			setId(id);
			setTitulo(titulo);
			setBanda(banda);
			setGenero(genero);
		}
		
		
		
		//getters & setters
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitulo() {
			return titulo;
		}
		public void setTitulo(String titulo) {
			this.titulo = titulo;
		}
		public String getBanda() {
			return banda;
		}
		public void setBanda(String banda) {
			this.banda = banda;
		}
		public String getGenero() {
			return genero;
		}
		public void setGenero(String genero) {
			this.genero = genero;
		}
		
		public String getCaratula() {
			return caratula;
		}

		public void setCaratula(String caratula) {
			this.caratula = caratula;
		}
		
		//toString
		@Override
		public String toString() {
			return "Disco [id=" + id + ", titulo=" + titulo + ", banda=" + banda + ", genero=" + genero + ", caratula=" + caratula + "]";
		}
		
		
		

}
