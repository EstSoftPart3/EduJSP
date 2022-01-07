package com.login.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

//import com.login.constant.EstEduConst;
import com.login.service.LoginService;
import com.login.vo.LoginVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller //최초 필수
public class LoginController extends BaseController {
	
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "loginService")
	LoginService loginService;
	
	//로그인 페이지 연결
	@RequestMapping(value = "/login/login.do")
	public ModelAndView openLoginPage(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/login/login");
		return mv;
	}
	
	
	// 로그인 submit
	
	@ResponseBody
	@RequestMapping(value = "/login/loginPost.do")
	public ModelAndView openLoginPost(HttpServletRequest request, HttpServletResponse response, LoginVo reqVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");	
		System.out.println("loginPost.do");
		
		List<LoginVo> loginFormData = new ArrayList<LoginVo>();
		loginFormData = loginService.loginMemberInfo(request, reqVo);

		if(loginFormData.isEmpty()) {
			mv.addObject("msg", "logout");
		}else {
			
			
		}
		//Return Data
		// ctl + t: 구현체 검색
		
		mv.addObject("loginFormData", loginFormData);
		
		return mv;
		
	
	}
	
	//로그아웃 submit
	@RequestMapping("/login/logout.do")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login/login");
        mv.addObject("msg", "logout");
        
        
        return mv;
    }
	
	

}
