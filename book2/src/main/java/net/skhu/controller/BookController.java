package net.skhu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.skhu.mapper.BookMapper;

@Controller
public class BookController {

	@Autowired BookMapper bookMapper;

    @RequestMapping("book/list")
    public String list(Model model) {
        model.addAttribute("books", bookMapper.findAll());
        return "book/list";
    }

    @RequestMapping("book/list0")
    public String list0(Model model) {
        model.addAttribute("books", bookMapper.findAll());
        return "book/list0";
    }

    @RequestMapping("book/detail")
    public String detail(Model model, Integer id) {
        model.addAttribute("book", bookMapper.findById(id));
        return "book/detail";
    }

}