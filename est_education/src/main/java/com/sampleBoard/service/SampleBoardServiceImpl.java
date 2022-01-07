package com.sampleBoard.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sampleBoard.dao.SampleBoardDao;
import com.sampleBoard.util.FileUtils;
import com.sampleBoard.vo.BoardSampleVo;

@Service(value = "sampleBoardService")
public class SampleBoardServiceImpl implements SampleBoardService{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "sampleBoardDao")
	SampleBoardDao sampleBoardDao;
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;

	//샘플게시판 리스트 + 페이징
	public List<BoardSampleVo> sampleBoardPagingList(int start, 
			                                         int end,
			                                         String keyword) throws Exception {
		
		List<BoardSampleVo> list = new ArrayList<BoardSampleVo>();

		try {	
			list = sampleBoardDao.sampleBoardPagingList(start, end, keyword);
		} catch (Exception e) {
			log.info("############## sampleBoardPagingList Failed!!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return list;
	}
	
	//샘플 게시판 상세페이지 + 조회수 
	@Override
	public BoardSampleVo sampleBoardDetail(BoardSampleVo boardSampleVo) throws Exception {
		
		BoardSampleVo boardsampleVo = new BoardSampleVo();
		
		try {
			boardsampleVo = sampleBoardDao.sampleBoardDetail(boardSampleVo);
			sampleBoardDao.sampleBoardDetailHit(boardSampleVo);
		}catch(Exception e) {
			log.info("############## sampleBoardDetail Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return boardsampleVo;
	}
	
	//샘플 게시판 등록 + 샘플 게시판 파일첨부 등록
	/*@Override
    public void sampleBoardInsert(BoardSampleVo boardSampleVo, 
    		                      MultipartHttpServletRequest mpRequest) throws Exception {
		
		try {
			sampleBoardDao.sampleBoardInsert(boardSampleVo);

			List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(boardSampleVo, mpRequest); 
			int size = list.size();
			for(int i=0; i<size; i++){ 
				sampleBoardDao.insertFile(list.get(i)); 
			}
			System.out.println("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSs" + list);
		} catch (Exception e) {
			log.info("############## sampleBoardInsert Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
	}*/
	
	//샘플 게시판 등록
	@Override
    public void sampleBoardInsert(BoardSampleVo boardSampleVo) throws Exception {
		
		try {
			sampleBoardDao.sampleBoardInsert(boardSampleVo);
		} catch (Exception e) {
			log.info("############## sampleBoardInsert Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
	}
	
	//샘플게시판 파일 등록
	@Override
    public void sampleBoardFileInsert(BoardSampleVo boardSampleVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		try {
			List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(boardSampleVo, mpRequest); 
			int size = list.size();
			for(int i=0; i<size; i++){ 
				sampleBoardDao.insertFile(list.get(i));
			}
		} catch (Exception e) {
			log.info("############## sampleBoardFileInsert Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
	}

	//샘플 게시판 수정
	@Override
    public void sampleBoardUpdate(BoardSampleVo boardSampleVo, 
    		                      String[] files, 
    		                      String[] fileNames, 
    		                      MultipartHttpServletRequest mpRequest) throws Exception {
		
		try {
			sampleBoardDao.sampleBoardUpdate(boardSampleVo);
			
			List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(boardSampleVo, files, fileNames, mpRequest);
			Map<String, Object> tempMap = null;
			int size = list.size();
			for(int i = 0; i<size; i++) {
				tempMap = list.get(i);
				if(tempMap.get("IS_NEW").equals("Y")) {
					sampleBoardDao.insertFile(tempMap);
				}else {
					sampleBoardDao.updateFile(tempMap);
				}
			}
		} catch (Exception e) {
			log.info("############## sampleBoardUpdate Failed!!!! [" + e.getMessage() + "]");
		}finally {
			
		}
				
	}

	//샘플 게시판 삭제
	@Override
    public int sampleBoardDelete(BoardSampleVo boardSampleVo) throws Exception {
		
		int result = 0;
		
		try {
			result = sampleBoardDao.sampleBoardDelete(boardSampleVo);
		} catch(Exception e) {
			log.info("############## sampleBoardDelete Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return result;
	}
 
	//샘플 게시판 총 개수
	@Override
	public int sampleBoardCountList(String keyword) throws Exception  {
		
	    return sampleBoardDao.sampleBoardCountList(keyword);
	}
	
	//샘플 게시판 파일 목록
	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		
		return sampleBoardDao.selectFileList(bno);
	}
	
	//샘플 게시판 파일 정보
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		
		return sampleBoardDao.selectFileInfo(map);
	}
	
	
}
