package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnoreplyVO;
import com.koreait.app.boards.vo.SecreplyVO;

public class SecreplyModifyOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardsDAO dao = new BoardsDAO();
		SecreplyVO vo = new SecreplyVO();
		vo.setReply_content(req.getParameter("content"));
		vo.setReply_num(Integer.parseInt(req.getParameter("reply_num")));
//		업데이트 메소드 사용
		dao.updateSecreply(vo);
		return null;
	}

}
