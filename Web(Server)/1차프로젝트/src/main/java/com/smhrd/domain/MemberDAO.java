package com.smhrd.domain;

import java.util.List;

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
	
	// 수정 기능
	public int updateMember(Member m_vo) {
		int cnt = 0;
		try {
			cnt = sqlSession.update("com.smhrd.domain.MemberDAO.updateMember", m_vo);
			
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			sqlSession.close();
		}
		return cnt;
	}
	
	
	// select 실행시 호출할 메소드
	// 1. selectOne() -> Object (원하는 타입을 mapper 지정 - resultType)
	// 	  -> null, 1  그 이상의 값이 있을 경우에는 오류
	
	// 2. selectList() -> List (결과값)
	// (mapper(resultType -> List 안에 들어가는 객체의 타입(클래스 경로))
	
	// 전체회원정보 불러오는 기능
	public List<Member> selectAll() {
		
		List<Member> memberList = null ;
		
		try {
		memberList = sqlSession.selectList("com.smhrd.domain.MemberDAO.selectAll");
		
		if(memberList!=null) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			sqlSession.close();
		}
		return memberList;
	}
	
	
	// 회원삭제하는 기능
	public int deleteMember(String email) {
		int cnt = 0;
		try {
			cnt = sqlSession.delete("com.smhrd.domain.MemberDAO.deleteMember", email);
			
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
	
	
	
	
	
	
}
