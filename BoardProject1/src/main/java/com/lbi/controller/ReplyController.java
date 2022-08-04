package com.lbi.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lbi.domain.ReplyVO;
import com.lbi.service.ReplyService;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	
	@Inject
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String postWrite(ReplyVO vo) throws Exception {
		replyService.write(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
	}

}
