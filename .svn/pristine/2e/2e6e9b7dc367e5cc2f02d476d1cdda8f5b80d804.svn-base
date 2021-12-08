package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberFindPwOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MembersDAO dao = new MembersDAO();
		MembersVO vo = new MembersVO();
		String pw = req.getParameter("pw");
		String id = req.getParameter("checkId");
		ActionForward forward = new ActionForward();
		dao.pwUpdate(id, pw);

	
		forward.setRedirect(false);
		forward.setPath("/app/members/resultOkPw.jsp");
		
		return forward;
	}

}
