package com.itwill.brown_carrot_market.dao;

import java.util.List;

import com.itwill.brown_carrot_market.dto.Notice;

public interface NoticeDao {

	//공지사항 전체조회
	List<Notice> selectAll() throws Exception;
	
	//공지사항 글 한개 찾기
	Notice selectByNo(int notice_no) throws Exception;
	
	//공지사항 글 등록
	int insertNotice(Notice notice) throws Exception;
	
	//공지사항 글 한개 삭제
	int deleteNotice(int notice_no) throws Exception;
	
	//공지사항 글 수정
	int updateNotice(Notice notice) throws Exception;
	
	//공지사항 글 조회수 증가
	int updateNoticeCount(int notice_no) throws Exception;
	
	
}
