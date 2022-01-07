package com.file.service;

import com.file.vo.FileVo;

public interface FileService {
	
	
	public int insertFile(FileVo fileVo) throws Exception;
	public int updateFile(FileVo fileVo, int doc_flag) throws Exception;
	

}
