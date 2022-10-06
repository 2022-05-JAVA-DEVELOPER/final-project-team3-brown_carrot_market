package com.itwill.brown_carrot_market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.itwill.brown_carrot_market.dto.ChatRoom;
import com.itwill.brown_carrot_market.dto.ChatRoomListView;



@Mapper
public interface ChatRoomMapper {

	
	
	// 채팅방 목록 
	/*
	@Select("select g.c_room_no,g.not_read,t.send_time,t.c_content from (select c_room_no,count(*) as not_read from chat_contents\r\n"
			+ "where c_room_no in (select c_room_no from chat_room where from_id=#{user_id} or to_id=#{user_id})\r\n"
			+ "and c_read=0 \r\n"
			+ "and user_id!=#{user_id}\r\n"
			+ "group by c_room_no) g inner join (select a.c_room_no,send_time,c_content\r\n"
			+ "from (select c_room_no from chat_room d where d.to_id = #{user_id} or d.from_id = #{user_id})a \r\n"
			+ "inner join (select a.send_time,a.c_room_no,a.c_content from chat_contents a \r\n"
			+ "left join chat_contents b \r\n"
			+ "on a.c_room_no = b.c_room_no and a.send_time<b.send_time \r\n"
			+ "where b.c_room_no is null) b \r\n"
			+ "on a.c_room_no = b.c_room_no\r\n"
			+ "order by send_time desc) t on g.c_room_no = t.c_room_no")
	*/
	@Select("select a.c_room_no,send_time,c_content\r\n"
			+"from (select c_room_no from chat_room  where (from_id =#{user_id} and from_id_in=1) or (to_id = #{user_id} and to_id_in=1))a \r\n" 
			+"inner join (select a.send_time,a.c_room_no,a.c_content from chat_contents a \r\n"
			+"left join chat_contents b \r\n"
			+"on a.c_room_no = b.c_room_no and a.send_time<b.send_time \r\n"
			+"where b.c_room_no is null) b \r\n"
			+"on a.c_room_no = b.c_room_no\r\n"
			+"order by send_time desc")
	public List<ChatRoomListView> chatRoomSelectAll(@Param("user_id") String user_id);
	
	// 채팅방 목록  체크기능
	@Select("select * from chat_room where c_room_no=#{c_room_no}")
	public ChatRoom chatRoomSelect(@Param("c_room_no") Integer c_room_no);
	
	// 채팅 생성 중복 체크
	@Select("select * from chat_room where from_id=#{from_id} and to_id=#{to_id} and p_no=#{p_no}")
	public List<ChatRoom> chatRoomCheck(@Param("from_id") String from_id,@Param("to_id") String to_id,@Param("p_no") Integer p_no);
	
	// 채팅방 생성
	@Insert("insert into chat_room(c_room_no,from_id,to_id,p_no,from_id_in,to_id_in) values(CHAT_ROOM_C_ROOM_NO_SEQ.nextval,#{from_id},#{to_id},#{p_no},1,1)")
	public int chatRoomCreate(@Param("from_id") String from_id,@Param("to_id") String to_id,@Param("p_no") Integer p_no);
	
	
	// 채팅방 삭제
	@Delete("delete from chat_room where c_room_no = #{c_room_no}")
	public int chatRoomDelete(int c_room_no);
	
	// 첫 채팅방 삭제..? --> From 
	@Update ("update chat_room set from_id_in=1 where from_id=#{user_id} and c_room_no=#{c_room_no}")
	public int chatRoomDeleteFrom(String user_id, int c_room_no);

	// 첫 채팅방 삭제 --> To
	@Update ("update chat_room "
			+ "set to_id_in=1 where to_id=#{user_id} and c_room_no=#{c_room_no}")
	public int chatRoomDeleteTo(String user_id, int c_room_no);
	
	// 채팅방 안읽은 메시지 수
	@Select("select count(*) from chat_contents where c_room_no=#{c_room_no} and c_read=0 and user_id!=#{user_id}")
	public int chatNotRead(int c_room_no,String user_id);
	
}