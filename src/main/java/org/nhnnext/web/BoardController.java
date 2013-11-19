package org.nhnnext.web;

import java.util.Collections;
import java.util.List;

import org.nhnnext.repository.BoardRepository;
import org.nhnnext.support.FileUploader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class BoardController {
	@Autowired
	private BoardRepository boardRepository;
	
	@RequestMapping(value="/board")
	public String list(Model model) {
		List<Board> savedBoard = (List<Board>) boardRepository.findAll();
		Collections.reverse(savedBoard);
		model.addAttribute("boards", savedBoard);
		
		return "list";
	}
	
	@RequestMapping(value={"/", "/board"}, method=RequestMethod.POST)
	public String create(Board board, MultipartFile file) {
		String fileName = FileUploader.upload(file);
		board.setFileName(fileName);
		Board savedBoard = boardRepository.save(board);
		
//		return "redirect:/board/" + savedBoard.getId();
		return "redirect:/board";
	}
	
	@RequestMapping("/board/form")
	public String form() {
		return "form";
	}
	
	@RequestMapping("/board/{id}")
	public String show(@PathVariable Long id, Model model) {
		Board getBoard = boardRepository.findOne(id);
		model.addAttribute("board", getBoard); 
		
		return "show";
	}

}
