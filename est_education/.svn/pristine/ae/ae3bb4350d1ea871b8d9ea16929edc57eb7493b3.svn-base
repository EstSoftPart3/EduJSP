package com.login.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.login.dao.LoginDao;
import com.login.vo.LoginVo;

@Service(value = "loginService") //최초필수
public class LoginServiceImpl implements LoginService {
	
Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="loginDao")
	LoginDao loginDao;
	
	private final static String SESSION_USER_INFO = "SESSION_USER_INFO";
	
	private final static String USER_SESSION_ID = "USER_SESSION_ID";
	
	@Override
	public List<LoginVo> loginMemberInfo(HttpServletRequest request, LoginVo reqVo) throws Exception {
		
	  List<LoginVo> result = new ArrayList<LoginVo>();
	  // ctrl+shift+o : import classes, package
	  HttpSession session = request.getSession();	
		
		try {
			
			result = loginDao.loginMemberInfo(reqVo);
			
			if(result.isEmpty()) {
				
				// 세션에 로그인 정보 저장
				session.setAttribute(USER_SESSION_ID, null);
				//response.sendRedirect("/login/login.do");
			} else {
			
				// 리스트에서 1건 조회(좋지 않은 방식.)
				LoginVo userInfo = result.get(0);
				
				// 세션에 로그인 정보 저장
				session.setAttribute(SESSION_USER_INFO, userInfo);
				
				// 새로운 LoginVo에 세션 세팅
				LoginVo userSessionInfo = (LoginVo) session.getAttribute(SESSION_USER_INFO);
				
				String userSessionId = userSessionInfo.getMbrId();
				
				// 세션에 로그인 정보 저장
				session.setAttribute(USER_SESSION_ID, userSessionId);
						
				log.debug("UserSessionId:" + userSessionId);
				
				// 디버깅 할때 일단 한번 해보긴 했지만 잘 모르겠음 : log.debug("userSessionInfo:" + userSessionInfo.getMbrId());
				
				// 일단 모아놓음.....
				// ctrl + w: 창 닫기
				// ctrl+h: 파일 검색 시 활용
				// f3 클래스 선언부 트래킹
				// alt+"<-": f3 이전 돌아가기
				// ctrl + shift + r : 리소스 오픈
				
				
				//response.sendRedirect("/erp/sample/openSamplePage.do");
				
				
				
				// list형 데이터  : 
				//mv.addObject("loginPostDataList", loginFormData);
				
				// object 데이터
				//mv.addObject("loginPostData", userInfo);
			
			
			}
			
			//System.out.println("login Data Success");
			
		}catch(Exception e) {
			
			System.out.println("login Data False");
			
			log.info("############## loginMemberInfo Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	
 
}