package com.koreait.app.members;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MembergetPwAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");

		
		MembersDAO dao = new MembersDAO();
		PrintWriter out = resp.getWriter();
		JSONObject obj = new JSONObject();
		String pw = req.getParameter("pwpw");
		String sessionId = req.getParameter("sessionId");
		String sessionpw = dao.getInfo(sessionId).getMember_pw();
		
		System.out.println(sessionpw);
		if(pw.equals(sessionpw)) {
		obj.put("pwpw", sessionpw);
		}else {
			obj.put("pwpw", "non-ok");
		}
		System.out.println(sessionpw);
		
		out.println(obj.toJSONString());
		
		out.close();
		
		return null;
	}

}
