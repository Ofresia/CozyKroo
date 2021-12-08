package com.koreait.app.members.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.json.simple.JSONObject;

import com.koreait.app.members.vo.MembersVO;
import com.koreait.mybatis.config.SqlMapConfig;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MembersDAO {
	SqlSessionFactory sessionf = SqlMapConfig.getSqlMapInterface();
	SqlSession sql_session;
	
	public MembersDAO() {
		sql_session = sessionf.openSession(true);
	}
	
	//비밀번호 수정
	public void pwUpdate(String id, String pw) {
		HashMap<String, String> map = new HashMap<>();
		map.put("member_id", id);
		map.put("member_pw", pw);
		sql_session.update("Members.pwUpdate", map);
	}
	
	//회원가입
	public void join(MembersVO member) {
		sql_session.insert("Members.join", member);
	}
	
	//아이디 중복 검사
	public boolean checkId(String member_id) {
		return (Integer)sql_session.selectOne("Members.checkId", member_id) == 1;
	}
	
	//로그인
	public boolean login(String id, String pw) {
		HashMap<String, String> map = new HashMap<>();
		map.put("member_id", id);
		map.put("member_pw", pw);
		return (Integer)sql_session.selectOne("Members.login", map) == 1;
	}
	
	//탈퇴 여부
	public boolean checkSignOut(String member_id) {
		//결과가 1이면 탈퇴 == 탈퇴면 true
		return (Integer)sql_session.selectOne("Members.checkSignOut", member_id) == 1;
	}
	
	//회원 아이디로 회원의 모든 정보 가져오기
	public MembersVO getInfo(String member_id) {
		return sql_session.selectOne("Members.getInfo", member_id);
	}
	
	//회원번호로 아이디 찾기
	public boolean findId(String name, String phoneNum) {
		HashMap<String, String> map = new HashMap<>();
		map.put("member_name", name);
		map.put("member_phoneNum", phoneNum);
		return (Integer)sql_session.selectOne("Members.findId", map) >= 1;
	}
	//회원 여부 찾기
	public boolean findPw(String id, String phoneNum) {
		HashMap<String, String> map = new HashMap<>();
		map.put("member_id", id);
		map.put("member_phoneNum", phoneNum);
		return (Integer)sql_session.selectOne("Members.findPw", map) == 1;
	}
	
	
	//인증번호 보내기
	public String send(String phoneNum) {
		String api_key = "NCS8OXFJTOAAXJJ3";
	     String api_secret = "W0IFTCK2IVRCNGFPU2UCPVB6UAXVKMOU";
	     Message coolsms = new Message(api_key, api_secret);
	     String data = "0123456789";
	     String number = "";
	     Random r = new Random();

	     for (int i = 0; i < 6; i++) {
	        number += data.charAt(r.nextInt(data.length()));
	    }
	     // 4 params(to, from, type, text) are mandatory. must be filled
	     HashMap<String, String> params = new HashMap<String, String>();
	     Scanner sc = new Scanner(System.in);
	     params.put("to", phoneNum);//phoneNumber
	     params.put("from", "01043772616");
	     params.put("type", "SMS");
	     params.put("text", "본인인증번호는 " + number + "입니다. 정확히 입력해주세요.");
	     params.put("app_version", "test app 1.2"); // application name and version

	     try {
	       JSONObject obj = (JSONObject) coolsms.send(params);
	       System.out.println(obj.toString());
	     } catch (CoolsmsException e) {
	       System.out.println(e.getMessage());
	       System.out.println(e.getCode());
	     }
	    return number;
	}
	
	public List<String> findMId(String name, String phoneNum) {
		HashMap<String, String> map = new HashMap<>();
		map.put("member_name", name);
		map.put("member_phoneNum", phoneNum);
		return sql_session.selectList("Members.findMId", map);
	}
	
/*	//회원정보 수정
	public boolean update(MembersVO vo) {
		return sql_session.update("Members.update", vo) == 1;
	}*/
	
	//비밀번호 수정
	public void update(MembersVO vo) {
		sql_session.update("Members.update", vo);
	}
	
	
	//회원 탈퇴
	public void signOut(String id) {
		sql_session.update("Members.signOut", id);
	}
	
	//회원 전체 목록
	public List<MembersVO> getList() {
		return sql_session.selectOne("Members.getList");
	}
	
	//아이 이름
	public String babyName(String id) {
		return sql_session.selectOne("Members.babyName", id);
	}
	
	//출산 예정일
	public String babyDate(String id) {
		return sql_session.selectOne("Members.babyDate", id);
	}
	//아이 숫자
	public String childNum(String id) {
		return sql_session.selectOne("Members.childNum", id);
	}
	public void naverJoin(MembersVO vo) {
		sql_session.insert("Members.naverJoin", vo);
	}
}










