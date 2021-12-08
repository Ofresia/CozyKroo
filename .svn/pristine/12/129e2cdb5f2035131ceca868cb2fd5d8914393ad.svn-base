package com.koreait.app.members;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class MembersFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		System.out.println(requestURI);
		System.out.println(command);
		
		if(command.equals("/members/MemberIdCheckOkAction.me")) {
			try {new  MemberIdCheckOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/MemberJoinOk.me")) {
			try {forward = new MemberJoinOkAction().execute(req, resp);	} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/MemberLogin.me")) {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(contextPath +"/app/members/login.jsp");
			
		}else if(command.equals("/members/MemberJoin.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath(contextPath+"/app/members/join.jsp");
			
		}else if(command.equals("/members/MemberLoginOkAction.me")) {
			try {forward = new MemberLoginOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/logout.me")) {
			try {forward = new MemberLogoutOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/members/MemberFindIdOkAction.me")) {
			try {forward = new MemberFindIdOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/members/findInfo.me")) {
			try {forward = new MemberSendOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}

		}else if(command.equals("/members/findPwInfo.me")) {
			try {forward = new MemberSendPwOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/MemberSignoutAction.me")) {
			try {forward = new MemberSignoutAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/MemberSelfInfo.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath(contextPath+"/app/members/selfInfo.jsp");
			
		}else if(command.equals("/members/MemberUpdatePwOkAction.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/members/resultPw.jsp");
			
		}else if(command.equals("/members/MemberNaverLogin.me")) {
			try {forward = new MemberNaverLoginAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		
		}else if(command.equals("/members/MemberFindIdOkAction.me")) {
			try {forward = new MemberFindIdOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/updatePwInfo.me")) {
			try {forward = new MemberFindPwOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/members/MembergetPw.me")) {
			try {forward = new MembergetPwAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/members/MemberGetInfo.me")) {
			try {forward = new MemberGetInfoAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
		}else if(command.equals("/members/MemberModifyOk.me")) {
			try {forward = new MemberModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}else if(command.equals("/members/MemberchangePw.me")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/app/members/resultPw.jsp");
		}else if(command.equals("/members/MemberChangePwAction.me")) {
			try {forward = new MemberChangePwAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
		}
		if(forward != null) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}









