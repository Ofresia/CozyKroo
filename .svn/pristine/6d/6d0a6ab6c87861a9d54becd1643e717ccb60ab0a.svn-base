package com.koreait.app.boards;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.HusLikeVO;
import com.koreait.app.boards.vo.HusbandVO;
import com.koreait.app.boards.vo.KnowLikeVO;

public class HusLikeCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		HttpSession session = req.getSession();
		// no와 id값을 map에 저장
		HusLikeVO vo = new HusLikeVO();
		BoardsDAO dao = new BoardsDAO();
		HusbandVO vo2 = new HusbandVO();
		
		vo.setMember_id(req.getParameter("id"));
		vo.setBoard_num(Integer.parseInt(req.getParameter("no")));
		System.out.println(10);
		if(dao.huslikeCheck(vo)) {
			dao.huslikeDelete(vo);
		}else {
			dao.huslikeUpdate(vo);
		}
		
		int likecnt = dao.huslikeCount(vo.getBoard_num());
		vo2.setBoard_like(likecnt);
		vo2.setBoard_num(vo.getBoard_num());
		dao.updateHusLike(vo2);
		
		return null;
	}
}