package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.SecondhandVO;

public class SecondhandViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardsDAO dao = new BoardsDAO();
		SecondhandVO vo = new SecondhandVO();
		
		ActionForward forward = new ActionForward();
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		vo = dao.getSecondhandDetail(board_num);
		
		req.setAttribute("board", vo);
		req.setAttribute("type", 3);
		
		dao.updateSecondhandReadCount(board_num);
		
		forward.setRedirect(false);
		forward.setPath("/app/boards/boardsView.jsp");
		
		return forward;
	}

}
