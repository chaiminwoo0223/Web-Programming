package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Color {

	@GetMapping("exam/color")
    public String color(Model model) {
		model.addAttribute("color", "yellow");
        return "exam/color";
    }

    @PostMapping("exam/color")
    public String color(Model model, String color) {
        model.addAttribute("color", color);
        return "exam/color";
    }
}