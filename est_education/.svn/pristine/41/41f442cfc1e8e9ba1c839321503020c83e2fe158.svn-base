package com.erp.admin.humanresources.member.util;

import org.springframework.stereotype.Component;

import com.erp.admin.humanresources.member.vo.ErpMemberVo;

@Component("memberUtils")
public class MemberUtils {
	
	public boolean isFirstPage(ErpMemberVo vo) {
		if(vo.getCntrcTcd()==null && vo.getDeptTcd()==null && vo.getRnkTcd()==null && vo.getKeyword()==null && vo.getCurPage() == 0) {
			return true;
		}else {
			return false;
		}
	}
}
