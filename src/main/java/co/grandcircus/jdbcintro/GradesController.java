package co.grandcircus.jdbcintro;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.grandcircus.jdbcintro.dao.GradesDao;
import co.grandcircus.jdbcintro.dao.GradesDaoOld;
import co.grandcircus.jdbcintro.entity.Grade;

@Controller
public class GradesController {
	
	@Autowired
	private GradesDao gradeDAO;
	@Autowired
	private GradesDaoOld gradeDaoOld;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/grades";
	}

	@RequestMapping("/grades")
	public String list(Model model) {
		List<Grade> leListOfRooms = gradeDAO.findAll();
		System.out.println(leListOfRooms);
		model.addAttribute("grade", leListOfRooms);
		return "list";
	}
	
	@RequestMapping("/grades/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		Grade grade = gradeDAO.findById(id);
		System.out.println(grade);
		model.addAttribute("grade", grade);
		return "detail";
	}
	
	@RequestMapping("/grades/edit")
	public String edit(@RequestParam("id") Long id, Model model) {
		Grade grade = gradeDAO.findById(id);
		model.addAttribute("grade", grade);
		return "edit";
	}
	
	@PostMapping("/grades/edit")
	public String save(@RequestParam("id") Long id, Grade grade) {
		grade.setId(id);
		
		gradeDAO.update(grade);
		
		return "redirect:/grades/detail?id=" + id;
	}
	
	@RequestMapping("/grades/add")
	public String showAdd() {		
		return "add";
	}
	
	@PostMapping("/grades/add")
	public String submitAdd(Grade grade) {		
		gradeDAO.create(grade);
		
		return "redirect:/grades";
	}
	
	@RequestMapping("/grades/delete")
	public String remove(@RequestParam("id") Long id) {
		gradeDAO.delete(id);
		
		return "redirect:/grades";
	}
}
