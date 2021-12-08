package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;

public class HusDeleteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int board_num = Integer.parseInt(req.getParameter("board_num"));

		BoardsDAO dao = new BoardsDAO();
		ActionForward forward = new ActionForward();
		
		dao.deleteHusband(board_num);
		req.setAttribute("type", 2);
		HttpSession session = req.getSession();
		session.setAttribute("type", 2);

		forward.setRedirect(false);
		forward.setPath("/boards/BoardsList.bo");

		return forward;
	}

}
