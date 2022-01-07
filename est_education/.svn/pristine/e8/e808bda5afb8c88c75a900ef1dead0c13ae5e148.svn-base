package com.question.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.question.dao.QuestionDao;
import com.question.vo.AnswerVo;
import com.question.vo.QuestionVo;


@Service(value = "questionService")
public class QuestionServiceImpl implements QuestionService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="questionDao")
QuestionDao questionDao;

@Override
public List<QuestionVo> selectQuestionList(QuestionVo questionVo) throws Exception {
	List<QuestionVo> list = new ArrayList<QuestionVo>();
	
	try {
		list = questionDao.selectQuestionList(questionVo);
	}catch(Exception e) {
		log.info("############## selectQuestionList Failed!!! [" + e.getMessage() + "]");
	}
	return list;
}


//글쓰기
@Override
public int insertQuestion(QuestionVo questionVo) throws Exception {
	int result = 0;
	try {
		result = questionDao.insertQuestion(questionVo);
	} catch(Exception e) {
		log.info(" insertQuestion 실패 [" + e.getMessage() + "]");
	}

	return result;
}
	
	//상세
@Override
public QuestionVo selectQuestionDetail(String bpNo) throws Exception {
	QuestionVo Detail = new QuestionVo();
	
	try {
		Detail = questionDao.selectQuestionDetail(bpNo);
	}catch(Exception e) {
		log.info("############## selectQuestionDetail Failed!!! [" + e.getMessage() + "]");
	}
	
	return Detail;
}

//삭제
@Override
public int DeleteQuestion(QuestionVo questionVo) throws Exception {
	int Delete = 0;
	
	try {
		Delete = questionDao.deleteQuestion(questionVo);
	} catch(Exception e) {
		log.info("############## deleteQuestion Failed!!! [" + e.getMessage() + "]");
	}
	
	return Delete;
}

//수정
@Override
public QuestionVo selectQuestionUpdate(String bpNo) throws Exception {
	QuestionVo Update = new QuestionVo();
	
	try {
		Update = questionDao.selectQuestionDetail(bpNo);
	}catch(Exception e) {
		log.info("############## selectQuestionDetail Failed!!! [" + e.getMessage() + "]");
	}
	
	return Update;
}

//수정
@Override
public int UpdateQuestion(QuestionVo questionVo) throws Exception {
	int result = 0;
	
	try {
		result = questionDao.updateQuestion(questionVo);
	} catch(Exception e) {
		log.info("############## updateQuestion Failed!!! [" + e.getMessage() + "]");
	}
	
	return result;
}

//답변
//글쓰기
/*@Override
public int insertAnswer(AnswerVo answerVo) throws Exception {
	int result = 0;
	try {
		result = questionDao.insertAnswer(answerVo);
	} catch(Exception e) {
		log.info(" AnswerList 실패 [" + e.getMessage() + "]");
	}

	return result;
}*/


@Override
public List<AnswerVo> selectAnswerList(AnswerVo answerVo) throws Exception {
	List<AnswerVo> list = new ArrayList<AnswerVo>();
	
	try {
		list = questionDao.selectAnswerList(answerVo);
	}catch(Exception e) {
		log.info("############## selectAnswerList Failed!!! [" + e.getMessage() + "]");
	}
	return list;
}


	
}
