    package com.koreait.app.members;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;

public class MemberIdCheckOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("id");
		MembersDAO dao = new MembersDAO();
		PrintWriter out = resp.getWriter();
		
		JSONObject obj = new JSONObject();
		
		if(dao.checkId(id)) {
			obj.put("status", "not-ok");
		}else {
			obj.put("status", "ok");
		}
		
		out.println(obj.toJSONString());
		out.close();
		return null;
	}

}

    
