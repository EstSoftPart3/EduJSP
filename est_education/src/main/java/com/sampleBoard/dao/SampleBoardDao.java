package com.sampleBoard.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sampleBoard.vo.BoardSampleVo;

import common.dao.AbstractDAO;

@Repository("sampleBoardDao")
public class SampleBoardDao extends AbstractDAO {

	
	//샘플 게시판 리스트 목록
	@SuppressWarnings(value = "unchecked")
	public List<BoardSampleVo> sampleBoardList(BoardSampleVo boardSampleVo) throws Exception{
		 
		Map<String, Object> paramMap = boardSampleVo.toMap();
		
		List<BoardSampleVo> out = selectList("sampleBoard.sampleBoardList",paramMap);

		return  out;
	}
	
	//샘플 게시판 리스트 목록 + 페이징
	@SuppressWarnings("unchecked")
	public List<BoardSampleVo> sampleBoardPagingList(int start, int end, String keyword) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("keyword", keyword);
		
	    return selectList("sampleBoard.sampleBoardPagingList", map);
	}
	
	//샘플 게시판 상세페이지 + 조회수 
	public BoardSampleVo sampleBoardDetail(BoardSampleVo boardSampleVo) throws Exception {
		return (BoardSampleVo) selectOne("sampleBoard.sampleBoardDetail", boardSampleVo);
	}
	
	//샘플 게시판 등록
	public int sampleBoardInsert(BoardSampleVo boardSampleVo) throws Exception {

		return (int) insert("sampleBoard.sampleBoardInsert", boardSampleVo);        
    }
	
	//샘플 게시판 수정
	public int sampleBoardUpdate(BoardSampleVo boardSampleVo) throws Exception {

		return (int) update("sampleBoard.sampleBoardUpdate",boardSampleVo);
    }
	
	//샘플 게시판 삭제
	public int sampleBoardDelete(BoardSampleVo boardSampleVo) throws Exception {

		return (int) delete("sampleBoard.sampleBoardDelete", boardSampleVo);
    }

	//샘플 게시판 조회수 카운트
	public int sampleBoardDetailHit(BoardSampleVo boardSampleVo) throws Exception {

		return (int) update("sampleBoard.sampleBoardDetailHit", boardSampleVo);
    }
	
	//샘플 게시판 총 개수
	public int sampleBoardCountList(String keyword) throws Exception {
		
	    return (Integer) selectOne("sampleBoard.sampleBoardCountList", keyword);
	}
	
	//샘플 게시판 엑셀 업로드
	@SuppressWarnings("unchecked")
	public List<BoardSampleVo> sampleBoardExcelInsert(BoardSampleVo boardSampleVo) throws Exception {
		
		//boardSampleVo를 map객체로 변환을 해준다.
		Map<String, Object> list = boardSampleVo.toMap();
		//List<BoardSampleVo>로 cast를 해준다음 mapper파일에 vo를 전달해서 순차적으로 insert하는 소스를 out의 변수에 지정한다.
		List<BoardSampleVo> out = (List<BoardSampleVo>) selectList("sampleBoard.sampleBoardExcelInsert", list);
		//out을 받환한다.
		return out;
	}
	
	//샘플 게시판 파일 저장
	public void insertFile(Map<String, Object> map) throws Exception {
		insert("sampleBoard.insertFile", map);
	}
	
	//샘플 게시판 파일 목록
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {

		return selectList("sampleBoard.selectFileList", bno);
	}
	
	//샘플 게시판 파일 정보
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		
		return (Map<String, Object>) selectOne("sampleBoard.selectFileInfo", map);
	}
	
	//샘플 게시판 파일 업로드
	public void updateFile(Map<String, Object> map) throws Exception {
		
		update("sampleBoard.updateFile", map);
	}
	
}
