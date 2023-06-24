package net.skhu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class Book {

	@GetMapping("exam/book")
    public String book(Model model) {
        return "exam/book";
    }

    @PostMapping("exam/book")
    public String book(Model model, String bookname, String writer, String publisher, String radio, HttpSession session) {
    	String errorMsg = null;
        if (bookname == null || bookname.length() == 0)
            errorMsg = "제목을 입력하세요";
        else if (writer == null || writer.length() == 0)
            errorMsg = "저자를 입력하세요";
        else if (publisher == null || publisher.length() == 0)
            errorMsg = "출판사를 입력하세요";
        else if (radio == null)
            errorMsg = "카테고리를 입력하세요";
        else {
        	session.setAttribute("bookname", bookname);
            session.setAttribute("writer", writer);
            session.setAttribute("publisher", publisher);
            session.setAttribute("radio", radio);
            return "redirect:book_success";
        }

        model.addAttribute("bookname", bookname);
        model.addAttribute("writer", writer);
        model.addAttribute("publisher", publisher);
        model.addAttribute("radio", radio);
        model.addAttribute("errorMsg", errorMsg);
        return "exam/book";
    }

    @GetMapping("exam/book_success")
    public String book_success(Model model) {
        return "exam/book_success";
    }
}

