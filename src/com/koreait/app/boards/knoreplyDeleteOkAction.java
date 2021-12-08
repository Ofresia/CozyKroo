package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;

public class knoreplyDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		int reply_num = Integer.parseInt(req.getParameter("reply_num"));
		
		BoardsDAO dao = new BoardsDAO();
		dao.deleteKnoreplyToReplyNum(reply_num);
		
		return null;
	}

}
