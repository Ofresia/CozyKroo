    package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		MembersDAO dao = new MembersDAO();
		MembersVO vo = new MembersVO();
		ActionForward forward = new ActionForward();
		
		vo.setMember_name(req.getParameter("member_name"));
		vo.setMember_id(req.getParameter("member_id"));
		vo.setMember_pw(req.getParameter("member_pw"));
		vo.setMember_phoneNum(req.getParameter("member_phoneNum"));
		vo.setMember_babyName(req.getParameter("member_babyName"));
		vo.setMember_babyDate(req.getParameter("member_babyDate"));
		try {vo.setMember_childNum(Integer.parseInt(req.getParameter("member_childNum")));} catch (Exception e) {System.out.println(e);}
		vo.setMember_email(req.getParameter("member_email"));
		
		dao.join(vo);
		
		forward.setRedirect(true);
		forward.setPath(req.getContextPath() + "/app/welcome.jsp");
		
		return forward;
	}
}


    
