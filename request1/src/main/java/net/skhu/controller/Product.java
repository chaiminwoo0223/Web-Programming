package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class Product {

	@GetMapping("exam/product")
    public String product(Model model) {
	    model.addAttribute("num1", 0);
	    model.addAttribute("num2", 0);
        return "exam/product";
    }

    @PostMapping("exam/product")
    public String product(Model model, String product, Integer num1, Integer num2, HttpSession session) {
        String errorMsg = null;
        if (product == null || product.length() == 0)
            errorMsg = "제품명을 입력하세요.";
        else {
        	session.setAttribute("product", product);
            session.setAttribute("num1", num1);
            session.setAttribute("num2", num2);
            return "redirect:product_success";
        }
        model.addAttribute("product", product);
        model.addAttribute("num1", num1);
        model.addAttribute("num2", num2);
        model.addAttribute("errorMsg", errorMsg);
        return "exam/product";
    }

    @GetMapping("exam/product_success")
    public String product_success(Model model) {
        return "exam/product_success";
    }
}
