package com.humanresources.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.humanresources.dao.HumanresourcesDao;
import com.humanresources.vo.HumanresourcesVo;

@Service(value = "humanresourcesService")
public class HumanresourcesServiceImpl implements HumanresourcesService {
	
Logger log = Logger.getLogger(this.getClass());
@Resource(name="humanresourcesDao")
HumanresourcesDao humanresourcesDao;

//리스트 출력
@Override
public List<HumanresourcesVo> selectHumanresourcesList() throws Exception {
	
	List<HumanresourcesVo> list = new ArrayList<HumanresourcesVo>();
	
	try {
			list = humanresourcesDao.selectHumanresourcesList();
			
	}catch(Exception e) {
		
		log.info("selectHumanresourcesList Exception for humanresourcesService ( "+e.getMessage()+" )");
		
	}	
	
	return list;
	
}

@Override
public int inserthmnRsrcsSttstcs(List<Map<String, Object>> hmnRsrcsSttstcsList) throws Exception {
	
	int result = 0;

	try {

		for(int i=0; i<hmnRsrcsSttstcsList.size(); i++) {

			HumanresourcesVo humanresourcesVo = new HumanresourcesVo();
			
			Map<String, Object> map = hmnRsrcsSttstcsList.get(i);
			
			humanresourcesVo.setHmnRsrcsSttstcsDt((String)map.get("hmnRsrcsSttstcsDt"));
			humanresourcesVo.setHmnRsrcsSttstcsSriNtAc(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriNtAc")));
			humanresourcesVo.setHmnRsrcsSttstcsSriNtItv(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriNtItv")));
			humanresourcesVo.setHmnRsrcsSttstcsJkNtAc(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkNtAc")));
			humanresourcesVo.setHmnRsrcsSttstcsJkNtItv(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkNtItv")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcRs(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcRs")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcSg(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcSg")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcAp(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcAp")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcAt(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcAt")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcAs(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcAs")));
			humanresourcesVo.setHmnRsrcsSttstcsSriSrcCc(Integer.valueOf((String) map.get("hmnRsrcsSttstcsSriSrcCc")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcRs(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcRs")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcSg(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcSg")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcAp(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcAp")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcAt(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcAt")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcAs(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcAs")));
			humanresourcesVo.setHmnRsrcsSttstcsJkSrcCc(Integer.valueOf((String) map.get("hmnRsrcsSttstcsJkSrcCc")));
			humanresourcesVo.setHmnRsrcsSttstcsNt((String)map.get("hmnRsrcsSttstcsNt"));
			String hmnRsrcsSttstcsStatus = (String)map.get("hmnRsrcsSttstcsStatus");
			
			if(hmnRsrcsSttstcsStatus.equals("I")) {
				
				result += humanresourcesDao.inserthmnRsrcsSttstcs(humanresourcesVo);
				
			} else if(hmnRsrcsSttstcsStatus.equals("U")) {
				
				result += humanresourcesDao.updatehmnRsrcsSttstcs(humanresourcesVo);
				
			} 
			
		}
		
	}catch(Exception e) {
		log.info("############## inserthmnRsrcsSttstcs Failed!!! [" + e.getMessage() + "]");
	}
	
	return result;

}

@Override
public List<HumanresourcesVo> popupHumanresourcesList(Map<String, String> searchData) throws Exception {
	
	List<HumanresourcesVo> list = new ArrayList<HumanresourcesVo>();
	
	System.out.println("HumanresourcesServiceImpl" + searchData );
	try {
			list = humanresourcesDao.popupHumanresourcesList(searchData);
			System.out.println("111111111111111111111111111111111111111111111" + list );
	}catch(Exception e) {
		log.info("############## popupHumanresourcesList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	

}
