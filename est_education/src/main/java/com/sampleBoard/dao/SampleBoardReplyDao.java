package com.sampleBoard.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sampleBoard.vo.BoardSampleReplyVo;
import com.sampleBoard.vo.BoardSampleVo;

import common.dao.AbstractDAO;

@Repository("sampleBoardReplyDao")
public class SampleBoardReplyDao extends AbstractDAO {

	//샘플 게시판 댓글 목록
	@SuppressWarnings(value = "unchecked")
	public List<BoardSampleReplyVo> sampleBoardReplyList(BoardSampleReplyVo boardSampleReplyVo) throws Exception{
		 
		Map<String, Object> paramMap = boardSampleReplyVo.toMap();
		
		List<BoardSampleReplyVo> out = selectList("sampleBoardReply.sampleBoardReplyList",paramMap);

		return  out;
	}

	//샘플 게시판 댓글 상세
	public BoardSampleReplyVo sampleBoardReplyDetail(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		return (BoardSampleReplyVo) selectOne("sampleBoardReply.sampleBoardReplyDetail", boardSampleReplyVo);
	}
	
	//샘플 게시판 댓글 등록
	public int sampleBoardReplyInsert(BoardSampleReplyVo boardSampleReplyVo) throws Exception {

		return (int) insert("sampleBoardReply.sampleBoardReplyInsert", boardSampleReplyVo);        
    }
	
	//샘플 게시판 댓글 수정
	public int sampleBoardReplyUpdate(BoardSampleReplyVo boardSampleReplyVo) throws Exception {

		return (int) update("sampleBoardReply.sampleBoardReplyUpdate", boardSampleReplyVo);
    }
	
	//샘플 게시판 댓글 삭제
	public int sampleBoardReplyDelete(BoardSampleReplyVo boardSampleReplyVo) throws Exception {

		return (int) delete("sampleBoardReply.sampleBoardReplyDelete", boardSampleReplyVo);
    }

	
}
