package com.code.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.code.dao.CodeDao;
import com.code.vo.CodeGroupVo;
import com.code.vo.CodeVo;

@Service(value = "codeService")
public class CodeServiceImpl implements CodeService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="codeDao")
	CodeDao codeDao;
	
	@Override
	public List<CodeGroupVo> selectCodeGroupList() throws Exception {
		
		List<CodeGroupVo> list = new ArrayList<CodeGroupVo>();
		
		try {
				list = codeDao.selectCodeGroupList();
		}catch(Exception e) {
			log.info("############## selectCodeGroupList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<CodeGroupVo> selectCodeGroupList(Map<String, String> searchData) throws Exception {
		
		List<CodeGroupVo> list = new ArrayList<CodeGroupVo>();
		
		try {
			
				list = codeDao.selectCodeGroupList(searchData);
			
		}catch(Exception e) {
			log.info("############## selectCodeGroupList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<CodeVo> selectCodeList(Map<String, String> searchData) throws Exception {
		
		List<CodeVo> list = new ArrayList<CodeVo>();
		
		try {
			list = codeDao.selectCodeList(searchData);
		}catch(Exception e) {
			log.info("############## selectCodeList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	@SuppressWarnings("rawtypes")
	public int cudCodeGroup(List<Map<String, Object>> codeGroupList) throws Exception {
		
		int result = 0;
		
		try {
			
			for(int i=0; i<codeGroupList.size(); i++) {
				
				CodeGroupVo codeGroupVo = new CodeGroupVo();
				
				Map map = codeGroupList.get(i);
				
				codeGroupVo.setGrpCd((String)map.get("grpCd"));
				codeGroupVo.setGrpNm((String)map.get("grpNm"));
				codeGroupVo.setGrpSortOrder(Integer.valueOf((String) map.get("grpSortOrder")));
				codeGroupVo.setGrpIsUse((String)map.get("grpIsUse"));
				codeGroupVo.setGrpNote((String)map.get("grpNote"));
				
				String grpStatus = (String)map.get("grpStatus");
				
				if(grpStatus.equals("C")) {
					
					result += codeDao.insertCodeGroup(codeGroupVo);
				} else if(grpStatus.equals("U")) {
					
					result += codeDao.updateCodeGroup(codeGroupVo);
				} else if(grpStatus.equals("D")) {
					
					result += codeDao.deleteCodeGroup(codeGroupVo);
				}
				
			}
			
		}catch(Exception e) {
			log.info("############## insertCodeGroup Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	@SuppressWarnings("rawtypes")
	public int cudCode(List<Map<String, Object>> codeList) throws Exception {

		int result = 0;
		
		try {
			
			for(int i=0; i<codeList.size(); i++) {
				
				CodeVo codeVo = new CodeVo();
				
				Map map = codeList.get(i);
				
				codeVo.setCodeGrpCd((String)map.get("codeGrpCd"));
				codeVo.setCodeComCd((String)map.get("codeComCd"));
				codeVo.setCodeNm((String)map.get("codeNm"));
				codeVo.setCodeSortOrder(Integer.valueOf((String) map.get("codeSortOrder")));
				codeVo.setCodeIsUse((String)map.get("codeIsUse"));
				codeVo.setCodeAttrValue1((String)map.get("codeAttrValue1"));
				codeVo.setCodeAttrValue2((String)map.get("codeAttrValue2"));
				codeVo.setCodeAttrValue3((String)map.get("codeAttrValue3"));
				codeVo.setCodeNote((String)map.get("codeNote"));
				
				String codeStatus = (String)map.get("codeStatus");
				
				if(codeStatus.equals("C")) {
					
					result += codeDao.insertCode(codeVo);
				} else if(codeStatus.equals("U")) {
					
					result += codeDao.updateCode(codeVo);
				} else if(codeStatus.equals("D")) {
					
					result += codeDao.deleteCode(codeVo);
				}
				
			}
			
		}catch(Exception e) {
			log.info("############## cudCode Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
}
