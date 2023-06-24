package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Practice {

	@GetMapping("exam/practice1")
    public String practice1(Model model) {
        model.addAttribute("myNumber", 202114058);
        model.addAttribute("myName", "최민우");
        return "exam/practice1";
    }

	@GetMapping("exam/practice2")
    public String practice2(Model model) {
        model.addAttribute("msg", "hello");
        return "exam/practice2";
    }

	@PostMapping("exam/practice2")
    public String practice2(Model model, String msg) {
    	model.addAttribute("msg", msg);
    	System.out.println(msg);
        return "exam/practice2";
    }

	@GetMapping("exam/practice3")
    public String practice3(Model model) {
		model.addAttribute("color", "yellow");
        return "exam/practice3";
    }

    @PostMapping("exam/practice3")
    public String practice3(Model model, String color) {
        model.addAttribute("color", color);
        System.out.println(color);
        return "exam/practice3";
    }

    @GetMapping("exam/practice4")
    public String practice4(Model model) {
		model.addAttribute("color", "yellow");
        return "exam/practice4";
    }

    @PostMapping("exam/practice4")
    public String practice4(Model model, String color) {
        model.addAttribute("color", color);
        System.out.println(color);
        return "exam/practice4";
    }
}
