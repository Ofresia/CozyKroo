package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Response;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberChangePwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");

		MembersDAO dao = new MembersDAO();
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("sessionId");
		MembersVO vo = dao.getInfo(id);
		String pw = req.getParameter("nowpw");
		String newpw = req.getParameter("pw");
		String newpwch = req.getParameter("checkPw");
		int ppww = 0;
		
		boolean check = false;
		//비밀번호가 틀렸을 경우
		if(!pw.equals(vo.getMember_pw())) {
			ppww = 1;
			check = true;
			req.setAttribute("ppww", 1);
		}
		//현재 비밀번호 새 비밀번호 같을때
		if(vo.getMember_pw().equals(newpw)) {
			ppww = 2;
			check = true;
			req.setAttribute("ppww", 2);
		}
		
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		if(check) {
			forward.setPath(req.getContextPath() +"/app/members/resultPw.jsp?ppww="+ppww);			
		}else {
			session.invalidate();
			dao.pwUpdate(id, newpwch);
			forward.setPath(req.getContextPath() +"/app/members/resultOkPw.jsp");			
		}
		
		
		
		return forward;
	}

}
