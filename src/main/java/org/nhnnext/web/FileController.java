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
	public String upload(File file) {
		System.out.println("File name: " + file);
		
		return "redirect:/";
	}

}
