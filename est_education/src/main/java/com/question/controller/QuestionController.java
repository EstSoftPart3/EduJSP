package com.question.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.question.service.QuestionService;
import com.question.vo.AnswerVo;
import com.question.vo.QuestionVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class QuestionController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "questionService")
QuestionService questionService;

@RequestMapping(value = "/question/openQuestionListPage.do")
public ModelAndView openQuestiontListPage(HttpServletRequest request, QuestionVo questionVo) throws Exception {
	ModelAndView mv = new ModelAndView("/question/question_list_page");
	
	
	List<QuestionVo> list = questionService.selectQuestionList(questionVo);
	mv.addObject("questionList", list);

	return mv;
}

//등록
@RequestMapping(value = "/question/openInsertQuestionListPage.do")
public ModelAndView openInserQuestiontListPage() throws Exception {
    ModelAndView mv = new ModelAndView("/question/question_insert_page");
    return mv;
}
//등록
@RequestMapping("/question/insertQuestion.do")
public ModelAndView insertQuestion(HttpServletRequest request, QuestionVo questionVo) throws Exception {
	ModelAndView mv = new ModelAndView("jsonView");
	
	int result = questionService.insertQuestion(questionVo);
	System.out.println("result" + result);
	mv.addObject("code", result);
	return mv;
}

//상세
@RequestMapping(value = "/question/openQuestionDetailPage.do")
public ModelAndView openQuestionDetailPage(HttpServletRequest request, String bpNo) throws Exception {
	ModelAndView mv = new ModelAndView("/question/question_detail_page");
	
	QuestionVo Detail = questionService.selectQuestionDetail(bpNo);
	mv.addObject("bpNo", Detail);

		return mv;
	}

//삭제
@RequestMapping("/question/DeleteQuestion.do")
public ModelAndView deleteQuestion(HttpServletRequest request, QuestionVo questionVo) throws Exception {
	ModelAndView mv = new ModelAndView("/question/question_list_page");
	
	int Delete = questionService.DeleteQuestion(questionVo);
	mv.addObject("bpNo", Delete);
	
	return mv;
}

//수정
@RequestMapping("/question/openQuestionUpdatePage.do")
public ModelAndView openQuestionUpdatePage(HttpServletRequest request, String bpNo) throws Exception {
	ModelAndView mv = new ModelAndView("/question/question_update_page");
	
	QuestionVo Update = questionService.selectQuestionUpdate(bpNo);

	mv.addObject("question", Update);
	
	return mv;
}
//수정
@RequestMapping("/question/UpdateQuestion.do")
public ModelAndView updateQuestion(HttpServletRequest request, QuestionVo questionVo) throws Exception {
	ModelAndView mv = new ModelAndView("jsonView");
	
	int result = questionService.UpdateQuestion(questionVo);
	mv.addObject("question", result);
	
	return mv;
}

//답변
/*@RequestMapping(value = "/question/openinsertAnswerPage.do")
public ModelAndView openinsertanswerPage(HttpServletRequest request, AnswerVo answerVo) throws Exception {
	ModelAndView mv = new ModelAndView("/question/answer_insert_page");
	
	
	List<AnswerVo> list = questionService.selectAnswerList(answerVo);
	mv.addObject("code", list);

	return mv;
}*/

//답변
@RequestMapping("/question/AnswerList.do")
public ModelAndView selectAnswerList(HttpServletRequest request, AnswerVo answerVo) throws Exception {
	ModelAndView mv = new ModelAndView("jsonView");
	
	List<AnswerVo> list = questionService.selectAnswerList(answerVo);
	System.out.println("result" + list);
	mv.addObject("code", list);
	return mv;
}


}