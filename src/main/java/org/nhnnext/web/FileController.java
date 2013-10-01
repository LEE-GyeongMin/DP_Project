package org.nhnnext.web;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/picture")
public class FileController {
	@RequestMapping("/upload")
	public String upload() {
		return "upload";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String upload(String title, String content, String file) {
		System.out.println("title	: " + file);
		System.out.println("content : " + content);
		System.out.println("file	: " + file);
		
		return "redirect:/";
	}

}
