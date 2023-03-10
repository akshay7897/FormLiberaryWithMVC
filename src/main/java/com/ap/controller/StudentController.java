package com.ap.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.ap.binding.Student;
import com.ap.entity.StudentEntity;
import com.ap.repository.StudentRepo;

@Controller
public class StudentController {
	
	@Autowired
	private StudentRepo studentRepo;
	
	@GetMapping("/")
	public String getIndex(Model model) {
		
		load(model);
		
		return "index";
	}

	
	@PostMapping("/save")
	public String handleSaveBtn(Student s,Model model) {
		System.out.println(s);
		
		StudentEntity studentEntity=new StudentEntity();
		
		BeanUtils.copyProperties(s, studentEntity);
		studentEntity.setTiming(Arrays.toString(s.getTiming()));
		
		studentRepo.save(studentEntity);
		
		model.addAttribute("msg", "Student Saved.....");
		
		load(model);
		
		return "index";
		
	}
	
	@GetMapping("/viewDetails")
	public String getStudents(Model model) {
		
		List<StudentEntity> students = studentRepo.findAll();
		model.addAttribute("student", students);
		
		return "data";
		
	}
	
	
	
	private void load(Model model) {
		List<String> courseList=new ArrayList<>();
		courseList.add("java");
		courseList.add("devops");
		courseList.add("python");
		courseList.add("AWS");
		
		List<String> timingList=new ArrayList<>();
		timingList.add("Morning");
		timingList.add("Evening");
		timingList.add("Night");
		
		Student student=new Student();
		
		model.addAttribute("course", courseList);
		model.addAttribute("timing", timingList);
		model.addAttribute("student", student);
	}
	
	

}
