package com.itwill.brown_carrot_market.service;

import java.util.ArrayList;
import java.util.List;

import com.itwill.brown_carrot_market.dto.Address;
import com.itwill.brown_carrot_market.dto.UserInfo;

public interface UserInfoService {

	/*
	 * 회원가입
	 */
	/**************1.반환값사용***********************/
	int create(UserInfo user,Address address) throws Exception;

	/*********************************************/

	/*
	 * 회원로그인
	 * 
	 * 0:아이디존재안함
	 * 1:패쓰워드 불일치
	 * 2:로그인성공
	 */
	int login(String userId, String password) throws Exception;
	/*
	 * 회원로그아웃
	 */

	/*
	 * 회원상세보기
	 */
	UserInfo findUser(String userId) throws Exception;
	/*
	 * 회원수정
	 */
	int update(UserInfo user) throws Exception;

	int updateAddress(Address addressS) throws Exception;
	
	int createAddress(Address address) throws Exception;
	
	/*
	 * 회원탈퇴
	 */
	int remove(String userId) throws Exception;

	/*
	 * 전체회원리스트
	 */
	List<UserInfo> findUserList() throws Exception;

	/*
	 * 아이디중복체크
	 */
	boolean isDuplicateId(String userId) throws Exception;

}