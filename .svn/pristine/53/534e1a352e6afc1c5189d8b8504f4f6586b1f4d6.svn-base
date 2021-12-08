package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.HusreplyVO;
import com.koreait.app.boards.vo.KnoreplyVO;

public class HusreplyModifyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardsDAO dao = new BoardsDAO();
		HusreplyVO vo = new HusreplyVO();
		vo.setReply_content(req.getParameter("content"));
		vo.setReply_num(Integer.parseInt(req.getParameter("reply_num")));
//		업데이트 메소드 사용
		dao.updateHusreply(vo);
		return null;
	}

}
