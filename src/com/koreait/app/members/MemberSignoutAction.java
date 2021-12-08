package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberSignoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");

		System.out.println("send ok");
		MembersDAO dao = new MembersDAO();
		MembersVO vo = new MembersVO();
		
		dao.signOut(req.getParameter("sibal"));
	
		req.getSession().invalidate();
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/goodBye.jsp");
		
		return forward;
	}

}
