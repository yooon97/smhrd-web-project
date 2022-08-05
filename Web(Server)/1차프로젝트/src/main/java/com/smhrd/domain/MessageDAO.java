package com.smhrd.domain;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MessageDAO {
   SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
   SqlSession sqlSession = sqlSessionFactory.openSession();
  
   
   //메세지 삽입 기능
   public int insertMessage(Message ms_vo) {
         int cnt = 0;
         try {
            cnt = sqlSession.insert("com.smhrd.domain.MessageDAO.insertMessage", ms_vo);
         
         if(cnt>0) {
            sqlSession.commit();
         }else {
            sqlSession.rollback();
         }   
         }catch (Exception e) {
            e.printStackTrace();
         }finally {
            sqlSession.close();
         }return cnt;
      }
   
   
	public List<Message> selectMessage(String email) {
		
		List<Message> messageList = null ;
		
		try {
		messageList = sqlSession.selectList("com.smhrd.domain.MessageDAO.selectMessage",email);
		if(messageList!=null) {
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
		return messageList;
	}
   
   
   
}
   