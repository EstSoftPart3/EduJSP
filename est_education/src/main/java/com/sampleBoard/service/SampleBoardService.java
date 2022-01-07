package com.sampleBoard.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sampleBoard.vo.BoardSampleVo;



public interface SampleBoardService {
	//샘플 게시판 목록 리스트 + 페이징
	public List<BoardSampleVo> sampleBoardPagingList(int start, int end, String keyword) throws Exception;
	
	//샘플 게시판 상세페이지 + 조회수 
	public BoardSampleVo sampleBoardDetail(BoardSampleVo boardSampleVo) throws Exception;
	
	//샘플 게시판 등록 + 샘플 게시판 첨부파일 등록
	//public void sampleBoardInsert(BoardSampleVo boardSampleVo, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//샘플 게시판 등록
	public void sampleBoardInsert(BoardSampleVo boardSampleVo) throws Exception;
	
	//샘플 게시판 첨부파일 등록
	public void sampleBoardFileInsert(BoardSampleVo boardSampleVo,MultipartHttpServletRequest mpRequest) throws Exception;
	
	//샘플 게시판 수정
	public void sampleBoardUpdate(BoardSampleVo boardSampleVo, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//샘플 게시판 삭제
	public int sampleBoardDelete(BoardSampleVo boardSampleVo) throws Exception;

	//샘플 게시판 총 개수
	public int sampleBoardCountList(String keyword) throws Exception;
	
	//샘플 게시판 파일 목록
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	//샘플 게시판 파일 정보
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
}
