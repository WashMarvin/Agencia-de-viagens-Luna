package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import database.SQLConnection;
import model.Cliente;
import dao.crudCliente;

public class ClienteDao implements crudCliente {
	
	private static Connection connection = SQLConnection.createConnection();
	private static String sql;
	
	public static void create(Cliente cliente) {
		sql = "INSERT INTO clientes VALUES (?,?,?,?,?,?)"; 
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, cliente.getNome());
			preparedStatement.setString(2, cliente.getCpf());
			preparedStatement.setString(3, cliente.getRg());
			preparedStatement.setString(4, cliente.getEmail());
			preparedStatement.setString(5, cliente.getCidade());
			preparedStatement.setString(6, cliente.getEstado());
			
			preparedStatement.executeUpdate();
			
			System.out.println("-- correct insert on database");
			
		}catch(SQLException e) {
			System.out.println("-- incorrect insert on database " + e.getMessage());
		}
		
	};
	
	public static void delete(int clienteId) {};
	
	public static List<Cliente> find(String pesquisa) {return null;}
	
	public static Cliente findByPk(int clienteId) {return null;}
	
	public static void update(Cliente cliente) {};

}
