package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberNaverLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MembersDAO dao = new MembersDAO();
		MembersVO vo = new MembersVO();
		String member_id = req.getParameter("member_id");
		String member_email = req.getParameter("member_email");
		String member_name = req.getParameter("member_name");
		HttpSession session = req.getSession();
		ActionForward forward = new ActionForward();
		boolean signoutCheck = false;
		int code = 0;
		vo.setMember_id(member_id);
		vo.setMember_email(member_email);
		vo.setMember_name(member_name);
		
		
		if(!dao.checkId(member_id)) {//중복이 아니면
			dao.naverJoin(vo);//회원 가입
			code = 1;//코드가 1이면 처음 네이버 로그인 하는 사람
		}
		
		if(dao.checkSignOut(member_id)) {//탈퇴된 회원
			signoutCheck = true;
			code = 2;
			forward.setPath(req.getContextPath()+"/app/members/login.jsp?code="+code);
		}else {
			session.setAttribute("sessionId", member_id);
			forward.setPath(req.getContextPath()+"/app/main2.jsp?code="+code);
		}
		
		forward.setRedirect(true);
		
		return forward;
	}

}
