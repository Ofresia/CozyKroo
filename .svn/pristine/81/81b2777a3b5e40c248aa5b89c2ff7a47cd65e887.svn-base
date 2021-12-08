package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;

public class MemberLoginOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MembersDAO dao = new MembersDAO();
		String id = req.getParameter("member_id");
		String pw = req.getParameter("member_pw");
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		boolean signoutCheck = false;
		forward.setRedirect(true);
		//탈퇴된 회원인지 확인
		if(dao.checkSignOut(id)) {//탈퇴된 회원
			signoutCheck = true;
		}
		
		
		if(dao.login(id, pw)) {
			if(signoutCheck) {
				forward.setPath(req.getContextPath() + "/app/members/login.jsp?code=" + 2);//탈퇴 회원이면  code = 2로 탈퇴회원 표시
			}else {//정상 회원이면 로그인 진행
				session.setAttribute("sessionId", id);
				forward.setPath(req.getContextPath() + "/app/main2.jsp");
			}
		}else {
			forward.setPath(req.getContextPath() + "/app/members/login.jsp?code=" + 1);
		}
		
		//code가 2면 alert창으로 1:1문의 유도
		return forward;
	}

}
