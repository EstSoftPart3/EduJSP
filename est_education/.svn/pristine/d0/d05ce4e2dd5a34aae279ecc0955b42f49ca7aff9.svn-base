package com.sampleBoard.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.sampleBoard.dao.SampleBoardReplyDao;
import com.sampleBoard.vo.BoardSampleReplyVo;
import com.sampleBoard.vo.BoardSampleVo;

@Service(value="sampleBoardReplyService")
public class SampleBoardReplyServiceImpl implements SampleBoardReplyService {

	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name="sampleBoardReplyDao")
	SampleBoardReplyDao sampleBoardReplyDao;
	
	//샘플 게시판 댓글 목록
	@Override 
	public List<BoardSampleReplyVo> sampleBoardReplyList(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		List<BoardSampleReplyVo> list = new ArrayList<BoardSampleReplyVo>();
		
		try {
			list = sampleBoardReplyDao.sampleBoardReplyList(boardSampleReplyVo);
		}catch(Exception e) {
			log.info("############## sampleBoardReplyList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	//샘플 게시판 댓글 상세
	@Override
	public BoardSampleReplyVo sampleBoardReplyDetail(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		try {
			boardSampleReplyVo = sampleBoardReplyDao.sampleBoardReplyDetail(boardSampleReplyVo);
		}catch(Exception e) {
			log.info("############## sampleBoardDetail Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return boardSampleReplyVo;
	}
	
	
	//샘플 게시판 댓글 등록
	@Override
	public int sampleBoardReplyInsert(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		int result=0;
		
		try {
			result = sampleBoardReplyDao.sampleBoardReplyInsert(boardSampleReplyVo);
		}catch(Exception e) {
			log.info("############## sampleBoardReplyInsert Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	//샘플 게시판 댓글 수정
	@Override
	public int sampleBoardReplyUpdate(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		int result=0;
		
		try {
			result = sampleBoardReplyDao.sampleBoardReplyUpdate(boardSampleReplyVo);
		}catch(Exception e) {
			log.info("############## sampleBoardReplyUpdate Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	//샘플 게시판 댓글 삭제
	@Override
	public int sampleBoardReplyDelete(BoardSampleReplyVo boardSampleReplyVo) throws Exception {
		
		int result=0;
		
		try {
			result=sampleBoardReplyDao.sampleBoardReplyDelete(boardSampleReplyVo);
		}catch(Exception e) {
			log.info("############## sampleBoardReplyDelete Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
}
