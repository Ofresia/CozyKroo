package com.koreait.app.boards;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnoreplyVO;

public class KnoreplyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		PrintWriter out = resp.getWriter();
		BoardsDAO dao = new BoardsDAO();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;
		
		//게시글 끝 번호
		int endRow = page * pageSize;
		//게시글 시작 번호
		int startRow = endRow - (pageSize - 1);
		
		//게시글 전체 개수
		int totalCnt = dao.getKnoreplyTotal(board_num);
		
		//페이징 처리		
		int realEndPage = (totalCnt - 1) / pageSize + 1;		 
		int startPage = ((page - 1) / pageSize) * pageSize + 1;  
		int endPage = startPage + 9;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		JSONArray jsonArr = new JSONArray();
		List<KnoreplyVO> replyList = dao.getKnoreplyTotalList(startRow, endRow, board_num);
		
		JSONObject pageInfo = new JSONObject();
		pageInfo.put("totalCnt", totalCnt);
		pageInfo.put("realEndPage", realEndPage);
		pageInfo.put("startPage", startPage);
		pageInfo.put("endPage", endPage);
		pageInfo.put("nowPage", page);
		
		jsonArr.add(pageInfo);
		
		try {
			for (int i = 0; i < replyList.size(); i++) {
				JSONObject reply = new JSONObject();
				reply.put("reply_num", replyList.get(i).getReply_num());
				reply.put("reply_content", replyList.get(i).getReply_content());
				reply.put("member_id", replyList.get(i).getMember_id());
				reply.put("reply_date", replyList.get(i).getReply_date());
				reply.put("board_num", replyList.get(i).getBoard_num());
				jsonArr.add(reply);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		out.println(jsonArr.toJSONString());
		out.close();
		
		return null;
	}

}
