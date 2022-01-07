package com.authority.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.authority.dao.AuthorityDao;
import com.authority.vo.AuthorityMemberVo;
import com.authority.vo.AuthorityVo;

@Service(value = "authorityService")
public class AuthorityServiceImpl implements AuthorityService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="authorityDao")
	AuthorityDao authorityDao;
	
	@Override
	public List<AuthorityVo> selectAuthorityGroupList() throws Exception {
		
		List<AuthorityVo> list = new ArrayList<AuthorityVo>();
		
		try {
				list = authorityDao.selectAuthorityGroupList();
		}catch(Exception e) {
			log.info("############## selectAuthorityGroupList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<AuthorityVo> selectAuthorityGroupList(Map<String, String> searchData) throws Exception {
		
		List<AuthorityVo> list = new ArrayList<AuthorityVo>();
		
		try {
			
				list = authorityDao.selectAuthorityGroupList(searchData);
			
		}catch(Exception e) {
			log.info("############## selectAuthorityGroupList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<AuthorityMemberVo> selectAuthorityMemberList(Map<String, String> searchData) throws Exception {
		
		List<AuthorityMemberVo> list = new ArrayList<AuthorityMemberVo>();
		
		try {
			list = authorityDao.selectAuthorityMemberList(searchData);
		}catch(Exception e) {
			log.info("############## selectAuthorityMemberList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	@SuppressWarnings("rawtypes")
	public int cudAuthority(List<Map<String, Object>> authorityList) throws Exception {
		
		int result = 0;
		
		try {
			
			for(int i=0; i<authorityList.size(); i++) {
				
				AuthorityVo authorityVo = new AuthorityVo();
				
				Map map = authorityList.get(i);
				
				authorityVo.setAuthCd((String)map.get("authCd"));
				authorityVo.setAuthNm((String)map.get("authNm"));
				authorityVo.setUseYn((String)map.get("useYn"));
				authorityVo.setNote((String)map.get("note"));
				
				String authStatus = (String)map.get("authStatus");
				
				if(authStatus.equals("C")) {
					
					result += authorityDao.insertAuthority(authorityVo);
				} else if(authStatus.equals("U")) {
					
					result += authorityDao.updateAuthority(authorityVo);
				} else if(authStatus.equals("D")) {
					
					result += authorityDao.deleteAuthority(authorityVo);
				}
				
			}
			
		}catch(Exception e) {
			log.info("############## insertAuthority Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	@SuppressWarnings("rawtypes")
	public int cudMember(List<Map<String, Object>> memberList) throws Exception {

		int result = 0;
		
		try {
			
			for(int i=0; i<memberList.size(); i++) {
				
				AuthorityMemberVo memberVo = new AuthorityMemberVo();
				
				Map map = memberList.get(i);
				
				memberVo.setMemberSq((String)map.get("memberSq"));
				memberVo.setMemberNm((String)map.get("memberNm"));
				memberVo.setMemberDprtmt((String)map.get("memberDprtmt"));
				memberVo.setMemberPosition((String)map.get("memberPosition"));
				
				
				
				String memberStatus = (String)map.get("memberStatus");
				
				if(memberStatus.equals("C")) {
					
					result += authorityDao.insertMember(memberVo);
				} else if(memberStatus.equals("U")) {
					
					result += authorityDao.updateMember(memberVo);
				} else if(memberStatus.equals("D")) {
					
					result += authorityDao.deleteMember(memberVo);
				}
				
			}
			
		}catch(Exception e) {
			log.info("############## cudMember Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
//	//insertAuthMember============================================================
//	@Override
//	public int insertAuthMember(List<Map<String, Object>> memberList) throws Exception {
//		
//		int result = 0;
//		
//		try {
//			
//			for(int i=0; i<memberList.size(); i++) {
//				
//				AuthorityMemberVo memberVo = new AuthorityMemberVo();
//				AuthorityVo authVo = new AuthorityVo();
//				
//				Map map = memberList.get(i);
//				
//				authVo.setAuthCd((String)map.get("authCd"));
//				memberVo.setMemberSq((String)map.get("memberSq"));
//				
//				
//				String memberStatus = (String)map.get("memberStatus");
//				
//				if(memberStatus.equals("C")) {
//					
//					result += authorityDao.insertAuthMember(memberVo);
//				} 
//			}
//			
//		}catch(Exception e) {
//			log.info("############## cudMember Failed!!! [" + e.getMessage() + "]");
//		}
//		
//		return result;
//	}
	
//	//modal
//	@Override
//	public List<AuthorityMemberVo> selectMemberList(AuthorityMemberVo AuthorityMemberVo) throws Exception {
//		
//		List<AuthorityMemberVo> list = new ArrayList<AuthorityMemberVo>();
//		
//		try {
//			list = authorityDao.selectMemberList(AuthorityMemberVo);
//		}catch(Exception e) {
//			log.info("############## selectMemberList Failed!!! [" + e.getMessage() + "]");
//		}
//		
//		return list;
//	}
	
}
