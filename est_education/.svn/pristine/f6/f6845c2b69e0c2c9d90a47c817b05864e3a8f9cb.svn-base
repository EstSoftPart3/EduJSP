package com.file.service;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.file.dao.FileDao;
import com.file.vo.FileVo;

@Service(value = "fileService")
public class FileServiceImpl implements FileService {

	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="fileDao")
	FileDao fileDao;
	
	@Override
	public int insertFile(FileVo fileVo) throws Exception {
		
		int result = 0;
		try {
			result = fileDao.insertFile(fileVo);
		} catch(Exception e) {
			log.info("############## insertFile Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
		
	}

	@Override
	public int updateFile(FileVo fileVo, int doc_flag) throws Exception {
		int result = 0;
		
		try {
			result = fileDao.updateFile(fileVo, doc_flag);
		} catch(Exception e) {
			log.info("############## updateFile Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

}
