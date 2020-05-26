package co.grandcircus.jdbcintro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import co.grandcircus.jdbcintro.entity.Grade;

@Component
public class GradesDaoOld {
	
	public List<Grade> findAll() {
		try (Connection conn = getDBConnection()) {
			String query = "SELECT * FROM grade";
			PreparedStatement st = conn.prepareStatement(query);
			ResultSet rs = st.executeQuery();
	
			ArrayList<Grade> list = new ArrayList<>();
			while (rs.next()) {
				Long id = rs.getLong("id");
				String name = rs.getString("name");
				String type = rs.getString("type");
				Double score = rs.getDouble("score");
				Double total = rs.getDouble("total");
						
				list.add(new Grade(id, name, type, score, total));
			}
			
			return list;
		} catch(Exception ex) {
			ex.printStackTrace();
			return new ArrayList<>(0);
		}
	}

	private Connection getDBConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:mysql://localhost:3306/db_demos?useSSL=false";
		String userName = "root";
		String password = "java2020";

		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con = DriverManager.getConnection(url, userName, password);
		return con;
	}
}
