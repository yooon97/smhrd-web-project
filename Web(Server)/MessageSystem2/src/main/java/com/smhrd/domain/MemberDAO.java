package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MemberDAO {
	
	// SqlSessionFactory 생성 (연결해야하는 DB 설정 정보 가지고 있음)
	// -> Session 생성 ( DB연결, 작업수행, 종료 작업)
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 회원가입 기능
	public int insertMember(Member member) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.insertMember" , member);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	// 로그인 기능
	
	public Member selectMember(Member member) {
		Member loginMember = null;
		try {
			
			loginMember = sqlSession.selectOne("com.smhrd.domain.MemberDAO.selectMember", member);
			//cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.selectMember" , member);
			if(loginMember != null) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return loginMember;
	}
	
}
