package com.sampleBoard.service;

import java.util.List;

import com.sampleBoard.vo.BoardSampleReplyVo;
import com.sampleBoard.vo.BoardSampleVo;

public interface SampleBoardReplyService {

	//샘플 게시판 댓글 목록
	public List<BoardSampleReplyVo> sampleBoardReplyList(BoardSampleReplyVo boardSampleReplyVo) throws Exception;
	
	//샘픞 게시판 댓글 상세
	public BoardSampleReplyVo sampleBoardReplyDetail(BoardSampleReplyVo boardSampleReplyVo) throws Exception;
	
	//샘플 게시판 댓글 등록
	public int sampleBoardReplyInsert(BoardSampleReplyVo boardSampleReplyVo) throws Exception;
	
	//샘플 게시판 댓글 수정
	public int sampleBoardReplyUpdate(BoardSampleReplyVo boardSampleReplyVo) throws Exception;
	
	//샘플 게시판 댓글 삭제
	public int sampleBoardReplyDelete(BoardSampleReplyVo boardSampleReplyVo) throws Exception;
	
}
