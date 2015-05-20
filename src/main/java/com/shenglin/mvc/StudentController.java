package com.shenglin.mvc;

import com.shenglin.beans.entity.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-8-15
 * Time: 下午1:50
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class StudentController {

	@RequestMapping(value = "/student.html", method = RequestMethod.GET)
	public ModelAndView student() {
		return new ModelAndView("student", "command", new Student());
	}

	@RequestMapping(value = "/addStudent.html", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("SpringWeb") Student student,
							 ModelMap model) {
		model.addAttribute("name", student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("id", student.getId());

		return "studentResult";
	}
}