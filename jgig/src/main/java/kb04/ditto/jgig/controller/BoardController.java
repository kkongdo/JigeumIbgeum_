package kb04.ditto.jgig.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kb04.ditto.jgig.entity.BoardDto;
import kb04.ditto.jgig.entity.Criteria;
import kb04.ditto.jgig.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	
	
	
	
	@PostMapping("jgig/board_delete_action")
	public String board_delete_action(BoardDto dto, Model model ) {
		boardMapper.delete(dto);
		model.addAttribute("msg", "게시물 삭제 성공");
		return "board/insert_ok";
	}
	
	@GetMapping("jgig/board_delete_form")
	public String board_delete_form(@RequestParam("no") int no, Model model ) {
		BoardDto dto = boardMapper.findByNo(no);
		model.addAttribute("dto",dto);
		return "board/delete_form";
	}
	
	@PostMapping("jgig/board_update_action")
	public String board_update_action(BoardDto dto, Model model ) {
		boardMapper.update(dto);
		model.addAttribute("msg", "게시물 수정 성공");
		return "board/insert_ok";
	}
	
	@GetMapping("jgig/board_update_form")
	public String board_update_form(@RequestParam("no") int no, Model model ) {
		BoardDto dto = boardMapper.findByNo(no);
		model.addAttribute("dto",dto);
		return "board/update_form";
	}
	
	@GetMapping("jgig/board_detail")
	public String board_detail(@RequestParam("no") int no, Model model) {
		
		BoardDto dto = boardMapper.findByNo(no);
		boardMapper.updateView(dto);
		model.addAttribute("dto",dto);

		return "board/detail";
	}
	
	@PostMapping("jgig/board_insert_action")
	public String board_insert_action(BoardDto dto, Model model ) {
		boardMapper.insert(dto);
		model.addAttribute("msg", "게시물 추가 성공");
		return "board/insert_ok";
	}
	
	@GetMapping("jgig/board_insert_form")
	public String board_insert_form() {
		return "board/insert_form";
	}
	

	@GetMapping("jgig/board_list")
	public String board_list(Model model) {
		
		List<BoardDto> list = boardMapper.list();
		model.addAttribute("board_list",list);
		
		return "board/list";
	}
	
	
	@GetMapping("jgig/board_list_withPaging")
	public String board_list_withPaging(@RequestParam("pageNum") int pageNum, Model model) {
		Criteria criteria = new Criteria(pageNum);
		List<BoardDto> list = boardMapper.listWithPaging(criteria);
		
		int total = boardMapper.getTotal();
		model.addAttribute("total", total);
		
		model.addAttribute("board_list",list);
		
		return "board/list";
	}
	
}
