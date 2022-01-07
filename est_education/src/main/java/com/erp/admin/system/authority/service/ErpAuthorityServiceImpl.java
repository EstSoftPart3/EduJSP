package com.erp.admin.system.authority.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import com.authority.vo.AuthorityVo;
import com.erp.admin.system.authority.dao.ErpAuthorityDao;
import com.erp.admin.system.authority.vo.ErpAuthorityMemberVo;
import com.erp.admin.system.authority.vo.ErpAuthorityVo;

import common.util.ObjectConvertUtil;
import lombok.extern.slf4j.Slf4j;

@Service(value = "erpAuthorityService")
public class ErpAuthorityServiceImpl implements ErpAuthorityService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "erpAuthorityDao")
	ErpAuthorityDao erpAuthorityDao;

	public List<ErpAuthorityVo> selectAuthorityList() {
		List<ErpAuthorityVo> list = new ArrayList<ErpAuthorityVo>();
		list = erpAuthorityDao.selectAuthorityList();

		return list;

	}

	@Override
	public List<ErpAuthorityVo> selectAuthorityList(Map<String, String> searchData) {
		// TODO Auto-generated method stub

		List<ErpAuthorityVo> list = erpAuthorityDao.selectAuthorityList(searchData);
		return list;
	}

/*	@Override
	public List<ErpAuthorityVo> selectAuthorityList(String useYna) {
		// TODO Auto-generated method stub
		Map<String, String> useData = new HashMap<>();
		useData.put("useYna", useYna);
		List<ErpAuthorityVo> list = erpAuthorityDao.selectAuthorityList(useData);
		return list;
	}*/

	@Override
	public int cudCommAuth(List<Map<String, Object>> authorityList) {
		// TODO Auto-generated method stub
		//반복문을이용한 CUD 구분 및 VO설정,Dao를 통해 DB접근 
		int result = 0;
		
		try {
			
			for(int i=0; i<authorityList.size(); i++) {
				
				ErpAuthorityVo erpAuthorityVo = new ErpAuthorityVo();
				
				Map map = authorityList.get(i);
				
				erpAuthorityVo.setAuthCd((String)map.get("authCd"));
				erpAuthorityVo.setAuthNm((String)map.get("authNm"));
				erpAuthorityVo.setAuthUseWhthr((String)map.get("authUseWhthr"));
				erpAuthorityVo.setAuthNote((String)map.get("authNote"));
				erpAuthorityVo.setCmpnySq((String)map.get("cmpnySq"));
				String authStatus = (String)map.get("authStatus");
				
				if(authStatus.equals("C")) {
					
					result += erpAuthorityDao.insertAuthorityOne(erpAuthorityVo);
					
				} else if(authStatus.equals("U")) {
					
					result += erpAuthorityDao.updateAuthorityOne(erpAuthorityVo);
				} else if(authStatus.equals("D")) {
					
					result += erpAuthorityDao.deleteAuthorityOne(erpAuthorityVo);
				}/*status값 비교 if문 end */
				
			}/*authorityList 뿌려주는 반복문 end */
			
		}catch(Exception e) {
			log.info("############## erpCudAuthority Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return result;
	}

	@Override
	public List<ErpAuthorityMemberVo> selectAuthAllEmply(ErpAuthorityMemberVo erpAuthorityMemberVo) {
		// TODO Auto-generated method stub
		Map<String,String> erpAuthorityMemberMap=new HashMap<>();
		String authCd=erpAuthorityMemberVo.getAuthCd();
		erpAuthorityMemberMap.put("authCd", authCd);
		List<ErpAuthorityMemberVo> list= erpAuthorityDao.selectAuthAllEmply(erpAuthorityMemberMap);
		
		return list;
	}

	@Override
	public List<ErpAuthorityMemberVo> selectAuthEmplySch(Map<String, String> searchData) {
		// TODO Auto-generated method stub
	
		List<ErpAuthorityMemberVo> list = erpAuthorityDao.selectAuthAllEmply(searchData);
		return list;
	
	}

	//권한별 멤버 cud - 전체 권한 cud와 같은 맥락
	@Override
	public int cudAuthEmply(List<Map<String, Object>> authorityList) {
		// TODO Auto-generated method stub

		int result = 0;
		
		try {
			
			for(int i=0; i<authorityList.size(); i++) {
				
				ErpAuthorityMemberVo erpAuthorityMemberVo = new ErpAuthorityMemberVo();
				
				Map map = authorityList.get(i);
		
				
				erpAuthorityMemberVo.setAuthCd((String)map.get("authCd"));
/*				erpAuthorityMemberVo.setEmplySq(Integer.parseInt((String) map.get("emplySq")));*/
				erpAuthorityMemberVo.setCmpnySq((String) map.get("cmpnySq"));
				erpAuthorityMemberVo.setUsrId((String) map.get("usrId"));
				erpAuthorityMemberVo.setUsrSq((String) map.get("usrSq"));
				String authStatus = (String)map.get("memberStatus");
				
				if(authStatus.equals("C")) {
					result += erpAuthorityDao.insertAuthorityMemberOne(erpAuthorityMemberVo);
				} else if(authStatus.equals("U")) {
					
					result += erpAuthorityDao.updateAuthorityMemberOne(erpAuthorityMemberVo);
				} else if(authStatus.equals("D")) {
					
					result += erpAuthorityDao.deleteAuthorityMemberOne(erpAuthorityMemberVo);
				}/*status값 비교 if문 end */
				
			}/*authorityList 뿌려주는 반복문 end */
			
		}catch(Exception e) {
			log.info("############## erpCudAuthority Failed!!! [" + e.getMessage() + "]");
		}finally {
			
		}
		
		return result;
	}

}
