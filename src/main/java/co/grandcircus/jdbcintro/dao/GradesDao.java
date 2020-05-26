package co.grandcircus.jdbcintro.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import co.grandcircus.jdbcintro.entity.Grade;

@Repository
public class GradesDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Grade> findAll() {
		return jdbcTemplate.query("SELECT * FROM grade", new BeanPropertyRowMapper<>(Grade.class));
	}
	
	public Grade findById(Long id) {
		Grade match = jdbcTemplate.queryForObject("SELECT * FROM grade WHERE id = ?", new BeanPropertyRowMapper<>(Grade.class), id);
		return match;
	}
	
	public void update(Grade grade) {
		String sql = "UPDATE grade SET name = ?, type = ?, score = ?, total = ?, WHERE id = ?";
		jdbcTemplate.update(sql, grade.getName(), grade.getType(), grade.getScore(), grade.getTotal(), grade.getId());
	}
	
	public void create(Grade grade) {
		String sql = "INSERT INTO grade (name, type, score, total) VALUES (?, ?, ?, ?)";
		jdbcTemplate.update(sql, grade.getName(), grade.getType(), grade.getScore(), grade.getTotal());
	}
	
	public void delete(Long id) {
		String sql = "DELETE FROM grade WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}
}
