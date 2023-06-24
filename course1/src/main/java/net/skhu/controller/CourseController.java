package net.skhu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.dto.Course;
import net.skhu.mapper.CourseMapper;
import net.skhu.mapper.ProfessorMapper;

@Controller
public class CourseController {

	@Autowired CourseMapper courseMapper;
    @Autowired ProfessorMapper professorMapper;

    @RequestMapping("course/list")
    public String list(Model model) {
        List<Course> courses = courseMapper.findAll();
        model.addAttribute("courses", courses);
        return "course/list";
    }

    @GetMapping("course/create")
    public String create(Model model) {
    	Course course = new Course();
        model.addAttribute("course", course);
        model.addAttribute("professors", professorMapper.findAll());
        return "course/create";
    }

    @PostMapping("course/create")
    public String create(Model model, Course course) {
        courseMapper.insert(course);
        return "redirect:list";
    }

    @GetMapping("course/edit")
    public String edit(Model model, int id) {
    	Course course = courseMapper.findById(id);
        model.addAttribute("course", course);
        model.addAttribute("professors", professorMapper.findAll());
        return "course/edit";
    }

    @PostMapping("course/edit")
    public String edit(Model model, Course course) {
    	courseMapper.update(course);
        return "redirect:list";
    }

    @RequestMapping("course/delete")
    public String delete(int id) {
    	courseMapper.delete(id);
        return "redirect:list";
    }
}