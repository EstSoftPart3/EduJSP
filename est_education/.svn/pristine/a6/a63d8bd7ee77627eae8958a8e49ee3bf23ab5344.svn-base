package com.file.dao;

import org.springframework.stereotype.Repository;

import com.file.vo.FileVo;

import common.dao.AbstractDAO;

@Repository("fileDao")
public class FileDao extends AbstractDAO{
	
	public int insertFile(FileVo inVo) throws Exception {
		return (int) insert("file.insertFile", inVo);
	}
	
	public int updateFile(FileVo inVo, int doc_flag) throws Exception {
		return (int) update("file.updateFile"+"_"+doc_flag, inVo);
	}
	

}
