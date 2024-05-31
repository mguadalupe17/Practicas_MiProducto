package com.productos.negocio;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.productos.datos.Conexion;

public class Productos {
	private int id;
	private int id_categoria;
	private String nombre;
	private int cantidad;
	private double precio;
	private byte foto;
	public Productos() {
		super();
	}
	public Productos(int id, int id_categoria, String nombre, int cantidad, double precio) {
		super();
		this.id = id;
		this.id_categoria = id_categoria;
		this.nombre = nombre;
		this.cantidad = cantidad;
		this.precio = precio;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_categoria() {
		return id_categoria;
	}
	public void setId_categoria(int id_categoria) {
		this.id_categoria = id_categoria;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public byte getFoto() {
		return foto;
	}
	public void setFoto(byte foto) {
		this.foto = foto;
	}
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table class=\"tabla\"><thead><tr><th scope=\"col\">ID</th><th scope=\"col\">Producto</th><th scope=\"col\">Cantidad</th><th scope=\"col\">Precio</th></tr></thead><tbody><tr>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				int codigoproducto=rs.getInt(1);
				tabla+="<th scope=\"row\">"+rs.getInt(1)+"</th>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+"<td><a href=\"editarproductos.jsp?valor="+codigoproducto+"\">Modificar</a></td>"
						+"<td><a href=\"eliminarproductos.jsp?valor="+codigoproducto+"\">Eliminar</a></td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table border=3>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		System.out.print(resultado);
		return resultado;
	}
	public String ingresarProducto(int id, int cat,String nombre, int cantidad, double precio,
			String directorio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_pr,id_cat,"
				+ "nombre_pr,cantidad_pr,precio_pr,foto_pr) "
				+ "VALUES(?,?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,cat);
			pr.setString(3, nombre);
			pr.setInt(4, cantidad);
			pr.setDouble(5, precio);
			//File fichero=new File(directorio);
			//FileInputStream streamEntrada=new FileInputStream(fichero);
			pr.setBinaryStream(6, null);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	public int obtenerId() {
		String sql= "SELECT COUNT(*) FROM tb_producto";
		Conexion conn = new Conexion();
		int resultado= 0;
		ResultSet rs=null;
		try {
			rs= conn.Consulta(sql);
			while (rs.next()) {
			resultado= rs.getInt(1);	
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.print(e.getMessage());
		}
		return resultado+1;
	}
	public void editarProductos(int codigo)
	{
		Conexion con=new Conexion();
		ResultSet rs = null;
		String sql = "SELECT id_pr, id_cat, nombre_pr, precio_pr, cantidad_pr FROM tb_producto WHERE id_pr="+codigo;
		try 
		{
			rs=con.Consulta(sql);
			while(rs.next()) 
			{
				this.setId(rs.getInt(1));
				this.setId_categoria(rs.getInt(2));
				this.setNombre(rs.getString(3));
				this.setCantidad(rs.getInt(4));
				this.setPrecio(rs.getDouble(5));
			}
		} 
		catch (SQLException e) 
		{
			System.out.print(e.getMessage());

		}
	}
	public boolean modificarproductos(Productos p)
	{
		boolean ingresado = false;
		Conexion con=new Conexion();
		String sql = "UPDATE tb_producto SET id_cat="+p.getId_categoria()+", nombre_pr='"+p.getNombre()+"', cantidad_pr="
				+p.getCantidad()+", precio_pr="+p.getPrecio()+" WHERE id_pr="+p.getId();
		try 
		{
			con.Ejecutar(sql);
			ingresado = true;
		} 
		catch (Exception e) 
		{
			ingresado = false;
			System.out.print(e.getMessage());
		}
		return ingresado;
	}
	public boolean eliminarproductos(int codigo)
	{
		boolean eliminado = false;
		Conexion con=new Conexion();
		String sql = "DELETE FROM tb_producto WHERE id_pr="+codigo;
		try 	
		{
			con.Ejecutar(sql);
			eliminado = true;
		} 
		catch (Exception e) 
		{
			eliminado=false;
			System.out.print(e.getMessage());
		}
		return eliminado;
	}
	  	public String consultarProductos() 
	 { 
	  String sql="SELECT * FROM tb_producto GROUP BY id_pr"; 
	  Conexion con=new Conexion(); 
	  String tabla="<table class=table table-striped><th>Id</th><th>Productos</th><th>Añadir al carrito</th><th>Precio</th>"; 
	  ResultSet rs=null; 
	  rs=con.Consulta(sql); 
	  try { 
	   while(rs.next()) 
	   { 
		   tabla+="<tr>"
					+"<td>"+rs.getInt(1)+"</td>"
					+ "<td>"+rs.getString(3)+"</td>"
					+ "<td><input type=checkbox name=productos value="+rs.getInt(1)+"></td>"
					+"<td>"+rs.getInt(5)+"</td>"
							+ "</tr>";
	    } 
	   } catch (SQLException e) { 
	    // TODO Auto-generated catch block 
	    e.printStackTrace(); 
	    System.out.print(e.getMessage()); 
	   } 
	   tabla+="</table>"; 
	   return tabla; 
	 }
	   public List<Integer> suma(List<String> l) {
			if(l==null || l.isEmpty()){
				System.out.println("La lista lsuma está vacía");
				 return new ArrayList<>();
			}

			String sql="SELECT id_pr, precio_pr FROM tb_producto order by id_pr asc;";
			Conexion con=new Conexion();
			ResultSet rs=null;
			List<String> id=new ArrayList<>();
			List<Integer> resultado=new ArrayList<>();
			int count = 0;
			
				
			rs=con.Consulta(sql);
			try {
				while(rs.next())
				{
					id.add(String.valueOf(rs.getInt(1)));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print(e.getMessage());
			}
			
			if(id.isEmpty()){
				System.out.println("La lista l está vacía");
				 return new ArrayList<>();
			}
				
			for(String a:id) {
				count = 0;
				for(String b:l) {
					if(a.equals(b)) {
						count++;
					}
				}  
				System.out.println("El número " + a + " aparece " + count + " veces en la lista l.");
				resultado.add(count);
			}
			
			System.out.println("sumaaa");
			System.out.println(id);
			System.out.println(l);
			System.out.println(resultado);
			return resultado;
		}
		
		public List<Double>  precio(List<Integer> l) {
			if(l==null || l.isEmpty()){
				System.out.println("La lista lprecio está vacía");
				 return new ArrayList<>();
			}

			String sql="SELECT id_pr, precio_pr FROM tb_producto order by id_pr asc;";
			Conexion con=new Conexion();
			ResultSet rs=null;
			List<Double> precio=new ArrayList<>();
			List<Double> preciofinal=new ArrayList<>();
			List<Double> preciof=new ArrayList<>();
			rs=con.Consulta(sql);
			try {
				while(rs.next())
				{
					precio.add(rs.getDouble(2));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.print(e.getMessage());
			}
			if(precio.isEmpty() || (l.size() != precio.size())){
				System.out.println("La lista l está vacía o listas no se pueden multiplicar");
				 return new ArrayList<>();
			}

			for(int i = 0; i < precio.size(); i++) {
				 preciofinal.add(l.get(i) * precio.get(i));
			 }
			
			for(Double a:preciofinal) {
				if(a!= 0.0) {
					preciof.add(a);
				}
			}
			System.out.println(preciofinal);
			System.out.println(preciof);
			return preciof;
		}
		
		public double precioTotal(List<Double> pp) {
			double total = 0.0;
			for(Double x:pp) {
				total += x;
			}
			return total;
		}
		
		public List<String> elegidos(List<String> lista) {
			if(lista==null || lista.isEmpty()) {
				System.out.println("Lista inicial vacia");
				 return new ArrayList<>();
			}
			Set<String> set = lista.stream().collect(Collectors.toSet());
			List<String> productos = new ArrayList<>(set);
			System.out.println(productos);
			return productos;	
		}

	
	
	public int getNewId()
    {
        Conexion con=new Conexion();
        ResultSet rs = null;
        String sql = "SELECT id_pr FROM tb_producto";
        int aux = 0, valorComparar=0;
        try 
        {
            rs=con.Consulta(sql);
            while(rs.next()) 
            {
                valorComparar = rs.getInt(1);
                if(rs.getInt(1)>aux)
                {
                    aux=valorComparar;
                }
            }
        } 
        catch (SQLException e) 
        {
            System.out.print(e.getMessage());

        }
        return aux;
    }
	public String verProductos()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table class='table'><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		if (rs == null) {
			return "Error: la consulta SQL no devolvió ningún resultado.";
		}
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
}
