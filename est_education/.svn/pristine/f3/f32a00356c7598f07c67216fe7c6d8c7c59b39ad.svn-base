package com.erp.admin.system.code.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.erp.admin.system.code.dao.ErpCodeDao;
import com.erp.admin.system.code.vo.DetailCodeVo;
import com.erp.admin.system.code.vo.GroupCodeVo;


@Service(value = "ErpCodeService")
public class ErpCodeServiceImpl implements ErpCodeService{

	@Resource(name = "ErpCodeDao")
	ErpCodeDao erpCodeDao;
	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 그룹 코드 ]] 관련
	
	//그룹 코드 목록 조회
	@Override
	public List<GroupCodeVo> selectGroupCodeList() throws Exception {
		
		return erpCodeDao.selectGroupCodeList();
	}

	//그룹 코드 검색 조회
	@Override
	public List<GroupCodeVo> searchGroupCodeList(Map<String, String> searchData) throws Exception {
		
		return erpCodeDao.searchGroupCodeList(searchData);
	}

	//그룹 코드 C, U, D
	@Override
	public int cudGroupCode(List<Map<String, Object>> groupCodeList) throws Exception {
		
		int result = 0;
		
		try {
			//System.out.println(" [[ Service Test(groupCodeList) ]] " + groupCodeList);
			
			for(int i=0; i<groupCodeList.size(); i++) {
				
				GroupCodeVo groupCodeVo = new GroupCodeVo();
				
				Map map = groupCodeList.get(i);
				
				groupCodeVo.setGrpCd((String)map.get("grpCd"));
				groupCodeVo.setCompnySq(Integer.valueOf((String) map.get("compnySq")));
				groupCodeVo.setGrpCdNm((String)map.get("grpCdNm"));
				groupCodeVo.setGrpCdOrder(Integer.valueOf((String) map.get("grpCdOrder")));
				groupCodeVo.setGrpCdUseWhthr((String)map.get("grpCdUseWhthr"));
				groupCodeVo.setGrpCdCrrctnUsrSq(Integer.valueOf((String) map.get("grpCdCrrctnUsrSq")));
				groupCodeVo.setGrpCdNote((String)map.get("grpCdNote"));
				String grpStatus = (String)map.get("grpStatus");
				
				if(grpStatus.equals("C")) {
					
					result += erpCodeDao.insertGroupCode(groupCodeVo);
				} else if(grpStatus.equals("U")) {
					
					result += erpCodeDao.updateGroupCode(groupCodeVo);
				} else if(grpStatus.equals("D")) {
					
					result += erpCodeDao.deleteGroupCode(groupCodeVo);
				}
				
			}
			
		}catch(Exception e) {
			//System.out.println("[[[[[[[[[["+ e.getMessage() +"]]]]]]]]]]]]");
			String grpCudError = e.getMessage();
			if(grpCudError.equals("For input string: \"\"")) {
				result = 0;
			}
		
		}finally {
			System.out.println("[[ grpCudError result ]]"+result);
			
		}
		
		
		return result;
	}


	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 상세 코드 ]] 관련
	
	//상세 코드 검색 조회
	@Override
	public List<DetailCodeVo> searchDetailCodeList(Map<String, String> searchData) {
		
		return erpCodeDao.searchDetailCodeList(searchData);
	}

	//상세 코드 C, U, D
	@Override
	public int cudDetailCode(List<Map<String, Object>> detailCodeList) {
		int result = 0;
		
		try {
			
			for(int i=0; i<detailCodeList.size(); i++) {
				
				DetailCodeVo detailCodeVo = new DetailCodeVo();
				
				Map map = detailCodeList.get(i);
				
				detailCodeVo.setGrpCd((String)map.get("grpCd"));
				
				detailCodeVo.setDtlCd((String)map.get("dtlCd"));
				detailCodeVo.setCompnySq(Integer.valueOf((String) map.get("compnySq")));
				detailCodeVo.setDtlCdNm((String)map.get("dtlCdNm"));
				detailCodeVo.setDtlCdOrder(Integer.valueOf((String) map.get("dtlCdOrder")));
				detailCodeVo.setDtlCdUseWhthr((String)map.get("dtlCdUseWhthr"));
				detailCodeVo.setDtlCdCrrctnUsrSq(Integer.valueOf((String) map.get("dtlCdCrrctnUsrSq")));
				detailCodeVo.setDtlCdPrprtVal1((String)map.get("dtlCdPrprtVal1"));
				detailCodeVo.setDtlCdPrprtVal2((String)map.get("dtlCdPrprtVal2"));
				detailCodeVo.setDtlCdPrprtVal3((String)map.get("dtlCdPrprtVal3"));
				detailCodeVo.setDtlCdNote((String)map.get("dtlCdNote"));
				String dtlStatus = (String)map.get("dtlStatus");
				
				
				
				if(dtlStatus.equals("C")) {
					
					result += erpCodeDao.insertDetailCode(detailCodeVo);
				} else if(dtlStatus.equals("U")) {
					
					result += erpCodeDao.updateDetailCode(detailCodeVo);
				} else if(dtlStatus.equals("D")) {
					
					result += erpCodeDao.deleteDetailCode(detailCodeVo);
				}
				
			}
			
		}catch(Exception e) {
			String error = e.getMessage();
			System.out.println("Service C, U, D Error");
			System.out.println("["+error+"]");
			
		
		}finally {
			
		}
		
		return result;
	}
	
	
	

}
