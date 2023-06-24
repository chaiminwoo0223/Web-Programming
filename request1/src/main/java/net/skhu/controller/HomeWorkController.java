package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeWorkController {

	@GetMapping("homework/test1")
    public String test1(Model model) {
    	model.addAttribute("number", 0);
        return "homework/test1";
    }

	@PostMapping("homework/test1")
    public String test1(Model model, int number) {
    	model.addAttribute("number", ++number);
        return "homework/test1";
    }

	@GetMapping("homework/test2")
    public String test2(Model model) {
		model.addAttribute("number", "one");
        return "homework/test2";
    }

    @PostMapping("homework/test2")
    public String test2(Model model, String number) {
        model.addAttribute("number", number);
        return "homework/test2";
    }
}
