package com.koreait.app.boards;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnowLikeVO;
import com.koreait.app.boards.vo.SecLikeVO;
import com.koreait.app.boards.vo.SecondhandVO;

public class SecLikeCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		// no와 id값을 map에 저장
		SecLikeVO vo = new SecLikeVO();
		BoardsDAO dao = new BoardsDAO();
		SecondhandVO vo2 = new SecondhandVO();
		
		vo.setMember_id(req.getParameter("id"));
		vo.setBoard_num(Integer.parseInt(req.getParameter("no")));
		System.out.println(10);
		if(dao.seclikeCheck(vo)) {
			dao.seclikeDelete(vo);
		}else {
			dao.seclikeUpdate(vo);
		}
		
		int likecnt = dao.seclikeCount(vo.getBoard_num());
		vo2.setBoard_like(likecnt);
		vo2.setBoard_num(vo.getBoard_num());
		dao.updateSecLike(vo2);
		
		return null;
	}
}