package com.koreait.app.share;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.share.dao.ShareDAO;

public class ShareCenterListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ShareDAO dao = new ShareDAO();
		ActionForward forward = new ActionForward();
		JSONObject obj = new JSONObject();
		
		String centerType = req.getParameter("centerType");//산후조리원(1)인지 산부인과(2) 인지
		String centerName = null;
		String centerURL = null;
//		센터의 고유번호, 이름, 주소, url 
		
		forward.setRedirect(false);
		forward.setPath("/app/share/boardList.jsp");
		
		return forward;
	}

}
