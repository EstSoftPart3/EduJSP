package com.sampleBoard.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.vo.ProjectVo;
import com.sampleBoard.service.SampleBoardReplyService;
import com.sampleBoard.vo.BoardSampleReplyVo;
import com.sampleBoard.vo.BoardSampleVo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SampleBoardReplyController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "sampleBoardReplyService")
	SampleBoardReplyService sampleBoardReplyService;
	
	//샘플 게시판 댓글 목록
	@RequestMapping(value = "/erp/sample/sampleBoardReplyList.do")
	public ModelAndView sampleBoardReplyList(HttpServletRequest request, BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<BoardSampleReplyVo> list = sampleBoardReplyService.sampleBoardReplyList(boardSampleReplyVo);
		
		mv.addObject("sampleBoardReplyList", list);
		
		return mv;
	}
	
	//샘플 게시판 댓글 상세
	@RequestMapping(value="/erp/sample/sampleBoardReplyDetail.do")
    public ModelAndView sampleBoardReplyDetail(HttpServletRequest request, BoardSampleReplyVo boardSampleReplyVo) throws Exception {
        
        ModelAndView mv = new ModelAndView("jsonView");
        BoardSampleReplyVo detail = sampleBoardReplyService.sampleBoardReplyDetail(boardSampleReplyVo);
        mv.addObject("detail",detail);

        return mv;
    }
	
	//샘플 게시판 댓글 등록
	@RequestMapping("/erp/sample/sampleBoardReplyInsert.do")
	public ModelAndView sampleBoardReplyInsert(HttpServletRequest request, BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = sampleBoardReplyService.sampleBoardReplyInsert(boardSampleReplyVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	
	
	//샘플 게시판 댓글 수정
	@RequestMapping("/erp/sample/sampleBoardReplyUpdate.do")
	public ModelAndView sampleBoardReplyUpdate(HttpServletRequest request, BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = sampleBoardReplyService.sampleBoardReplyUpdate(boardSampleReplyVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	//샘플 게시판 댓글 삭제
	@RequestMapping("/erp/sample/sampleBoardReplyDelete.do")
	public ModelAndView sampleBoardReplyDelete(HttpServletRequest request, BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = sampleBoardReplyService.sampleBoardReplyDelete(boardSampleReplyVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
}
