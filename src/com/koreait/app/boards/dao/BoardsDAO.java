package com.koreait.app.boards.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.koreait.app.boards.vo.HusLikeVO;
import com.koreait.app.boards.vo.HusbandVO;
import com.koreait.app.boards.vo.HusreplyVO;
import com.koreait.app.boards.vo.KnoreplyVO;
import com.koreait.app.boards.vo.KnowLikeVO;
import com.koreait.app.boards.vo.KnowhowVO;
import com.koreait.app.boards.vo.SecLikeVO;
import com.koreait.app.boards.vo.SecondhandVO;
import com.koreait.app.boards.vo.SecreplyVO;
import com.koreait.mybatis.config.SqlMapConfig;


public class BoardsDAO {
   SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
   SqlSession sql_session;
   
   public BoardsDAO() {
      sql_session = sessionf.openSession(true);
   }
   
   public int getHusbandTotal() {
      return sql_session.selectOne("Boards.getHusbandTotal");
   }
   public int getKnowhowTotal() {
      return sql_session.selectOne("Boards.getKnowhowTotal");
   }
   public int getSecondhandTotal() {
      return sql_session.selectOne("Boards.getSecondhandTotal");
   }
   
   //페이지별 게시글 목록
   public List<HusbandVO> getHusbandList(int startRow, int endRow) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      
      return sql_session.selectList("Boards.getHusbandList", pageMap);
   }
   public List<KnowhowVO> getKnowhowList(int startRow, int endRow) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      
      return sql_session.selectList("Boards.getKnowhowList", pageMap);
   }
   public List<SecondhandVO> getSecondhandList(int startRow, int endRow) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      
      return sql_session.selectList("Boards.getSecondhandList", pageMap);
   }
   
   //게시글 추가
   public void insertHusband(HusbandVO husband) {
      sql_session.insert("Boards.insertHusband", husband);
   }
   
   public void insertKnowhow(KnowhowVO knowhow) {
      sql_session.insert("Boards.insertKnowhow", knowhow);
   }
   
   public void insertSecondhand(SecondhandVO secondhand) {
      sql_session.insert("Boards.insertSecondhand", secondhand);
   }

   //게시글 번호 가져오기(SEQ)
   public int getHusbandSeq() {
      return sql_session.selectOne("Boards.getHusbandSeq");
   }
   public int getKnowhowSeq() {
      return sql_session.selectOne("Boards.getKnowhowSeq");
   }
   public int getSecondhandSeq() {
      return sql_session.selectOne("Boards.getSecondhandSeq");
   }
   
   //게시글 상세보기(게시글 한 개 가져오기)
   public HusbandVO getHusbandDetail(int board_num) {
      return sql_session.selectOne("Boards.getHusbandDetail", board_num);
   }
   public KnowhowVO getKnowhowDetail(int board_num) {
      return sql_session.selectOne("Boards.getKnowhowDetail", board_num);
   }
   public SecondhandVO getSecondhandDetail(int board_num) {
      return sql_session.selectOne("Boards.getSecondhandDetail", board_num);
   }
   
   //게시글 수정
   public void updateHusband(HusbandVO husband) {
      sql_session.update("Boards.updateHusband", husband);
   }
   public void updateKnowhow(KnowhowVO knowhow) {
      sql_session.update("Boards.updateKnowhow", knowhow);
   }
   public void updateSecondhand(SecondhandVO secondhand) {
      sql_session.update("Boards.updateSecondhand", secondhand);
   }
   
   //게시글 삭제
   public void deleteHusband(int board_num) {
      sql_session.delete("Boards.deleteHusband", board_num);
   }
   public void deleteKnowhow(int board_num) {
      sql_session.delete("Boards.deleteKnowhow", board_num);
   }
   public void deleteSecondhand(int board_num) {
      sql_session.delete("Boards.deleteSecondhand", board_num);
   }
   
   //게시글 번호로 댓글 삭제
   public void deleteHusreplyToboardNum(int board_num) {
      sql_session.delete("Boards.deleteHusreplyToboardNum", board_num);
   }
   public void deleteKnoreplyToboardNum(int board_num) {
      sql_session.delete("Boards.deleteKnoreplyToboardNum", board_num);
   }
   public void deleteSecreplyToboardNum(int board_num) {
      sql_session.delete("Boards.deleteSecreplyToboardNum", board_num);
   }
   
   //조회수 증가
   public void updateHusbandReadCount(int board_num) {
      sql_session.update("Boards.updateHusbandReadCount", board_num);
   }
   public void updateKnowhowReadCount(int board_num) {
      sql_session.update("Boards.updateKnowhowReadCount", board_num);
   }
   public void updateSecondhandReadCount(int board_num) {
      sql_session.update("Boards.updateSecondhandReadCount", board_num);
   }
   
   //댓글 번호로 댓글 삭제
   public void deleteHusreplyToReplyNum(int reply_num) {
      sql_session.delete("Boards.deleteHusreplyToReplyNum", reply_num);
   }
   public void deleteKnoreplyToReplyNum(int reply_num) {
      sql_session.delete("Boards.deleteKnoreplyToReplyNum", reply_num);
   }
   public void deleteSecreplyToReplyNum(int reply_num) {
      sql_session.delete("Boards.deleteSecreplyToReplyNum", reply_num);
   }
   
   //댓글 추가
   public void insertKnoreply(KnoreplyVO reply) {
      sql_session.insert("Boards.insertKnoreply", reply);
   }
   public void insertHusreply(HusreplyVO reply) {
      sql_session.insert("Boards.insertHusreply", reply);
   }
   public void insertSecreply(SecreplyVO reply) {
      sql_session.insert("Boards.insertSecreply", reply);
   }
   
   
   //댓글 상세정보
   public KnoreplyVO getKnoreplyDetail(int board_num){
      return sql_session.selectOne("Boards.getKnoreplyList", board_num);
   }
   public HusreplyVO getHusreplyDetail(int board_num){
      return sql_session.selectOne("Boards.getHusreplyList", board_num);
   }
   public SecreplyVO getSecreplyDetail(int board_num){
      return sql_session.selectOne("Boards.getSecreplyList", board_num);
   }
   
   //페이지 별 댓글 목록
   public List<KnoreplyVO> getKnoreplyTotalList(int startRow, int endRow, int board_num) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      pageMap.put("board_num", board_num);
      
      return sql_session.selectList("Boards.getKnoreplyTotalList", pageMap);
   }
   
   public List<HusreplyVO> getHusreplyTotalList(int startRow, int endRow, int board_num) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      pageMap.put("board_num", board_num);
      
      return sql_session.selectList("Boards.getHusreplyTotalList", pageMap);
   }
   
   public List<SecreplyVO> getSecreplyTotalList(int startRow, int endRow, int board_num) {
      HashMap<String, Integer> pageMap = new HashMap<>();
      pageMap.put("startRow", startRow);
      pageMap.put("endRow", endRow);
      pageMap.put("board_num", board_num);
      
      return sql_session.selectList("Boards.getSecreplyTotalList", pageMap);
   }
   
//   
   public int getKnoreplyTotal(int board_num) {
      return sql_session.selectOne("Boards.getKnoreplyTotal", board_num);
   }
   
   public int getHusreplyTotal(int board_num) {
      return sql_session.selectOne("Boards.getHusreplyTotal", board_num);
   }
   
   public int getSecreplyTotal(int board_num) {
      return sql_session.selectOne("Boards.getSecreplyTotal", board_num);
   }
   
//   댓글 업데이트
   	public void updateKnoreply(KnoreplyVO vo) {
   		sql_session.update("Boards.updateKnoreply", vo);
   	}
   	
   	public void updateHusreply(HusreplyVO vo) {
   		sql_session.update("Boards.updateHusreply", vo);
   	}
   	
   	public void updateSecreply(SecreplyVO vo) {
   		sql_session.update("Boards.updateSecreply", vo);
   	}
   	
   	//view단에 꽂을 게시글 게시판 별로 5개씩 가져오기
    public List<HusbandVO> getHusMainList() {
       return sql_session.selectList("Boards.getHusMainList");
    }
    
    public List<KnowhowVO> getKnoMainList() {
       return sql_session.selectList("Boards.getKnoMainList");
    }
    
    public List<SecondhandVO> getSecMainList() {
       return sql_session.selectList("Boards.getSecMainList");
    }
    
 // 게시글 추천여부 검사
 	public boolean knolikeCheck(KnowLikeVO vo){
 		return (Integer)sql_session.selectOne("Boards.kno_check", vo) >= 1;
 	}

 // 게시글 추천
 	public void knolikeUpdate(KnowLikeVO vo){
 		sql_session.insert("Boards.kno_update", vo);
 	}
 	
 	// 게시글 추천 제거
 	public void knolikeDelete(KnowLikeVO vo){
 		sql_session.delete("Boards.kno_delete", vo);
 	}
 	
 	// 게시글 추천수
 	public int knolikeCount(int board_num){
 		return sql_session.selectOne("Boards.kno_count", board_num);
 	}
 	 // 게시글 추천여부 검사
 	public boolean seclikeCheck(SecLikeVO vo){
 		return (Integer)sql_session.selectOne("Boards.sec_check", vo) == 1;
 	}

 // 게시글 추천
 	public void seclikeUpdate(SecLikeVO vo){
 		sql_session.insert("Boards.sec_update", vo);
 	}
 	
 	// 게시글 추천 제거
 	public void seclikeDelete(SecLikeVO vo){
 		sql_session.delete("Boards.sec_delete", vo);
 	}
 	
 	// 게시글 추천수
 	public int seclikeCount(int board_num){
 		return sql_session.selectOne("Boards.sec_count", board_num);
 	}
 	 // 게시글 추천여부 검사
 	public boolean huslikeCheck(HusLikeVO vo){
 		return (Integer)sql_session.selectOne("Boards.hus_check", vo) == 1;
 	}

 // 게시글 추천
 	public void huslikeUpdate(HusLikeVO vo){
 		sql_session.insert("Boards.hus_update", vo);
 	}
 	
 	// 게시글 추천 제거
 	public void huslikeDelete(HusLikeVO vo){
 		sql_session.delete("Boards.hus_delete", vo);
 	}
 	
 	// 게시글 추천수
 	public int huslikeCount(int board_num){
 		return sql_session.selectOne("Boards.hus_count", board_num);
 	}
 	
 	// 세컨 좋아요 수정
 	public void updateSecLike(SecondhandVO vo) {
 		sql_session.update("Boards.updateSecondhandlike", vo);
 	}
 	// 허스 좋아요 수정
 	public void updateHusLike(HusbandVO vo) {
 		sql_session.update("Boards.updateHusbandlike", vo);
 	}
 	// 노하우 좋아요 수정
 	public void updateKnoLike(KnowhowVO vo) {
 		sql_session.update("Boards.updateKnowhowlike", vo);
 	}
 	
}


 

















