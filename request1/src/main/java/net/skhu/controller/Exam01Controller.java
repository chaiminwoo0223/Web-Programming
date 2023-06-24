package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Exam01Controller {

	@GetMapping("exam/student")
    public String student(Model model) {
    	model.addAttribute("number", 202114058);
    	model.addAttribute("name", "최민우");
        return "exam/student";
    }

	@PostMapping("exam/student")
    public String student(Model model, Integer number, String name) {
    	model.addAttribute("number", number);
    	model.addAttribute("name", name);
        return "exam/student";
    }

}
