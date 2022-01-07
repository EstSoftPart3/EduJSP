package com.question.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.question.vo.AnswerVo;
import com.question.vo.QuestionVo;

import common.dao.AbstractDAO;

@Repository("questionDao")
public class QuestionDao extends AbstractDAO {

	@SuppressWarnings(value = "unchecked")
public List<QuestionVo> selectQuestionList(QuestionVo questionVo) throws Exception{
	Map<String, Object> paramMap = questionVo.toMap();
	
	List<QuestionVo> out = (List<QuestionVo>) selectList("question.selectQuestionList",paramMap);
	
	return  out;
}

//글쓰기
public int insertQuestion(QuestionVo questionVo) throws Exception{
	return (int) insert("question.insertQuestion", questionVo);
}
	
//상세	
public QuestionVo selectQuestionDetail(String bpNo) throws Exception {
	return (QuestionVo) selectOne("question.selectQuestionDetail", bpNo);
	}

//삭제
public int deleteQuestion(QuestionVo questionVo) throws Exception {
	return (int) delete("question.DeleteQuestion", questionVo);
}

//수정
public int updateQuestion(QuestionVo questionVo) throws Exception {
	return (int) update("question.UpdateQuestion", questionVo);
}

//답변
/*public int insertAnswer(AnswerVo answerVo) throws Exception{
	return (int) insert("answer.insertAnswer", answerVo);
}*/


@SuppressWarnings(value = "unchecked")
public List<AnswerVo> selectAnswerList(AnswerVo answerVo) throws Exception{
Map<String, Object> paramMap = answerVo.toMap();

List<AnswerVo> out = (List<AnswerVo>) selectList("question.selectAnswerList",paramMap);

return  out;
}

}
