package com.koreait.app.members;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberSendPwOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MembersDAO dao = new MembersDAO();
		PrintWriter out = resp.getWriter();
		JSONObject obj = new JSONObject();
		
		String id = req.getParameter("pw");
		String phoneNum = req.getParameter("phoneNumber");
		String sms = "";
		
		ActionForward forward = new ActionForward();
		
		if(dao.findPw(id, phoneNum)) {
		sms = dao.send(phoneNum);
//			sms= "1234";
			obj.put("sms", sms);
		}else {
			obj.put("sms", "not-ok");
		}

		out.println(obj.toJSONString());
		out.close();
		
//		forward.setRedirect(true);
//		forward.setPath(req.getContextPath() + "/members/findInfo.jsp?phoneAuth="+sms);
		
		return null;
	}

}
