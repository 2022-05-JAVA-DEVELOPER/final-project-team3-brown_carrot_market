var num = null;
var loginId=getLoginId();
var loginName=null;
var yourId=null;
var mImage=null;
var socket=null;

var c_room_no=null;
var contextPath=getContextPath();

var last_seen_time=null;

var jsonData={
	code:null,
	url:null,
	msg:null,
	your_id:null, // 상대 아이디 
	data:null //chat_contents 
	
};

/* validator객체변수선언 */
	/*var validator=null;
    $.validator.setDefaults({
			rules:{
				chat_content_msg:{
					required:true
					
				}
			
				
			},
			messages:{
				chat_content_msg:{
					required: "내용을 입력하세요"
					
				}
				
			},
			errorClass:'error',
			validClass:'valid'
    });*/


//경로 얻기 
function getContextPath(){
   var lastIndexCount = location.href.lastIndexOf('/');
   var ctx = location.href.substr(0,lastIndexCount).replace('http', 'ws');
   return ctx;
}

//채팅 페이지 열릴 때 

$(document).ready(function(){
	
	 
	console.log("document ready");
	
	console.log("document ready end : "+loginId);
	//connectWS();
	
	message_send_function();
    
	});
	
	$(window).on("load",function(){
		//connectWS();
	})
	
function getLoginId(){
		$.ajax({
		url:"get_id",
		method:"POST",
		
		dataType:'JSON',
		success:function(jsonResult){
			loginId=jsonResult.mId
			mImage=jsonResult.userImg;
			console.log("로그인 아이디 얻기:"+loginId);
			console.log("프로필 이미지 얻기:"+mImage);
		},
		error:function(xhr){
			console.log("error");
		}
		
	});
	return loginId;
}
	
		
//채팅방 내용 불러오기		
$(document).on('click','[id^=btnCall]',function(e){
	if(socket!=null){
	socket.close();
	}
		
	e.stopPropagation();
	e.preventDefault();
		num = this.id.substr(7);
		console.log(num);
		c_room_no=num;
		var chat_detail={
			"c_room_no":num,
			"loginId":loginId
		}
$.ajax({
		
		
		url:"chat_detail_rest",
		method:"POST",
		//data:{"c_room_no":num},
		data: JSON.stringify(chat_detail),
		async: true,
        contentType: "application/json; charset=utf-8", //헤더의 Content-Type을 설정
        dataType: "JSON", //응답받을 데이터 타입 (XML,JSON,TEXT,HTML,JSONP)    			
    			    			
	
		
		success:function(jsonResult){
			connectWS();
			var chatContentArray=jsonResult.data;
			yourId=jsonResult.yourId;
			yourImg = jsonResult.yourImg;
			console.log("채팅방의 상대방 ID:"+yourId);
			console.log(chatContentArray[0]);
			//$('#content').html('채팅 불러오기 성공');
			$('#chat_history').html("");
			$('#chatHead').html("");
			//loginId=$('#loginId').val();
			console.log(loginId);
			/*
			for(const item of chatContentArray){
				
				if(item.user_id!=loginId){
					var youId = item.user_id;
					break;
			
				}else{
				
					var youId = "error";
			
				}
			};*/
			$('#chatHead').append(chat_head(yourId,yourImg));
			
			
			
			
			for(const item of chatContentArray){
				
				if(item.user_id!=loginId){
					console.log("내가 보낸 메세지");
			$('#chat_history').append(message_other(item));
				}else{
					console.log("상대가 보낸 메세지");
			$('#chat_history').append(message_you(item));
				}
			};
			
			//$('.chat-history').scrollTop($('.chat-history').prop('scrollHeight'));
		}
		
	});
	
	
	});
	
	//날짜 변환 
	function date_string(dateString){
		var dateConv = Date.parse(dateString);
	 var date = dayjs(Number(dateConv));
	  var nowDate1 = date.format("YYYY-MM-DD HH:mm:ss");
	  const nowDate=new Date(nowDate1);
	  
	  var year=nowDate.getFullYear();
	  var month=nowDate.getMonth();
	  var day=nowDate.getDate();
	  var hour=nowDate.getHours();
	  
	  var ampm="AM";
	  
	  if(hour>12){
		hour-=12;
		ampm="PM";
	}
	  var mm=nowDate.getMinutes();
	  var dayformat = "";
	  var dayString="";
	var today=new Date();
	
	if(year==today.getFullYear() && month==today.getMonth() && day==today.getDate()){
		dayString="오늘";
	}else if(year==today.getFullYear()){
		dayString=month+"월"+day+"일";
		
	}else{
		dayString=year+"년"+month+"월"+day+"일";
	}
	
	//$('#chat_history').append(`<h3>${dayString}</h3><br>`);
	
dayformat=hour+":"+mm+" "+ampm+","+" "+dayString;
	
	return dayformat;
		
	}

function message_other(chat_content){
	var chat_read="";
	if(chat_content.c_read==0){
		chat_read="전송됨";
	}else if(chat_content.c_read==1){
		chat_read="읽음";
	}
	

	return `<li class="clearfix">
									<div class="message-data">
										<span class="message-data-time">${date_string(chat_content.send_time)}</span>
									</div>
									<div class="message my-message">${chat_content.c_content}</div>
									<div class="chat_read_check">${chat_read}</div>
								</li>`
}

function message_you(chat_content){
	var chat_read="";
	if(chat_content.c_read==0){
		chat_read="전송됨";
	}else if(chat_content.c_read==1){
		chat_read="읽음";
	}
	return `<li class="clearfix">
									<div class="message-data text-right">
										<span class="message-data-time">${date_string(chat_content.send_time)}</span>  <img src='img/user_profile/${mImage}'
											alt="">
									</div>
									<div class="message other-message float-right">${chat_content.c_content}</div>
									<div class="chat_read_check">${chat_read}</div>
								</li>`
}
function chat_head(id,img){
	return 	`<div class="row">
								<div class="col-lg-6">
									<a href="javascript:void(0);" data-toggle="modal"
										data-target="#view_info"> <img
										src="img/user_profile/${img}"
										alt="avatar">
									</a>
									<div class="chat-about">
										<h6 class="m-b-0">${id}</h6>
										
										<small>Last seen: 2 hours ago</small>
									</div>
								</div>
								<div class="col-lg-6 hidden-sm text-right">
									<a href="javascript:void(0);" class="btn btn-outline-secondary"><i
										class="fa fa-camera"></i></a> <a href="javascript:void(0);"
										class="btn btn-outline-primary"><i class="fa fa-image"></i></a>
									<a href="javascript:void(0);" class="btn btn-outline-info"><i
										class="fa fa-cogs"></i></a> <a href="javascript:void(0);"
										class="btn btn-outline-warning"><i class="fa fa-question"></i></a>
								</div>
							</div>`
	
	
}


//메세지 전송 

function message_send_function(){
		$('#chat_content_msg').focus();
		
	$('#btnChatSend').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		if($('#chat_content_msg').val()==""){
			alert('내용을 입력하세요');
			$('#chat_content_msg').focus();
			return false;
		}
		console.log("send 버튼 클릭");
		timestamp = new Date().getTime();
		
		
		
		//제이슨데이터 만들기 
		// 임시 데이터 test
		
		jsonData.mId=loginId;
		
		
		/*****상대방 아이디 / 채팅방 데이터 받아와야 함  */
		jsonData.your_id=yourId;
		jsonData.msg="메세지 전송(socket.send)";
		jsonData.code="1";
		jsonData.data=[{
			c_content_no:"",
			c_content:$('#chat_content_msg').val(),
			send_time:"",
			c_read:"0",
			user_id:loginId,
			c_room_no:c_room_no
		}]
		

			
		
		console.log("json데이터만들기 끝")
		
		
		
		
	
		
			
		message_sendDB(jsonData);
		console.log("DB 전송")		
		return false;
	
	
	});
	return false;
}

function message_sendDB(jsonData){
				$.ajax({
				url:'chat_message_rest',
    			data: JSON.stringify(jsonData.data[0]), //전송 데이터
    			
    			type: "POST", //전송 타입
    			async: true, //비동기 여부
    			//timeout: 5000, //타임 아웃 설정
    				
    			contentType: "application/json; charset=utf-8", //헤더의 Content-Type을 설정
    			dataType: "JSON", //응답받을 데이터 타입 (XML,JSON,TEXT,HTML,JSONP)    			
    			    			
    			// [응답 확인 부분 - json 데이터를 받습니다] -보낸 클라이언트가 자기한테 받는 거 (?)
    			success: function(response) {
    				console.log("성공");
    				console.log(" 내가 보낸 것 [requestPostBodyJson] : [response] : " + JSON.stringify(response));    				
    				console.log("");
    				jsonData.data[0].send_time=response.send_time;
    				console.log(JSON.stringify(jsonData));    	
    				
    				socket.send(JSON.stringify(jsonData));		
    					console.log("socket 전송")	;	
    					//console.log("성공적인 socket 전송 여부: "+sendResult);
    			$('#chat_content_msg').val("");
    			},
    			error:function(xhr){
						console.log("error");
				}
    			
    			});
    			
			}





function connectWS(){
	console.log("connectWS 실행 : "+loginId)
	var url="ws://localhost:80/brown_carrot_market/replyEcho?"+loginId+"&"+c_room_no;
	var ws=new WebSocket(url);
	socket=ws;
	
	ws.onopen = function() {
			console.log(loginId+'서버 연결 성공');
			jsonData.mId=loginId;
		
		
		/*****상대방 아이디 / 채팅방 데이터 받아와야 함  */
		jsonData.your_id=yourId;
		jsonData.msg="채팅방 입장(socket.send)";
		jsonData.code="2";
		jsonData.data=[{
			c_content_no:"",
			c_content:"",
			send_time:"",
			c_read:"0",
			user_id:loginId,
			c_room_no:c_room_no
		}]
			socket.send(JSON.stringify(jsonData));
			console.log()
		
	    };
	ws.onerror=function(evt){
		console.log('에러');
	}
	
	ws.onmessage=function(result){
		//var onMsg=JSON.parse(evt);
		result.stopPropagation();
		//console.log(result.data);
		//var onMsg=JSON.parse(result.data);
		console.log('메세지 얻기');
		//console.log(onMsg.data[0]);
		var onmsg=JSON.parse(result.data);
		console.log(onmsg.code);
		
		/*
		if(onMsg.data[0].user_id!=loginId){
			//상대가 메세지 보낸 경우
            $('#chat_history').append(message_other(onMsg.data[0]));
		}else if(onMsg.data[0].user_id==loginId){
			//내가 보낸 경우
			$('#chat_history').append(message_you(onMsg.data[0]));
		}
		*/
		//메세지 전송한 경우
		if(onmsg.code=="1"){
		if(onmsg.user_id!=loginId){
			//상대가 메세지 보낸 경우
			console.log("상대가 보낸 경우"+onmsg.user_id)
            $('#chat_history').append(message_other(onmsg));
		}else if(onmsg.user_id==loginId){
			console.log("내가 보낸 경우"+onmsg.user_id)
			//내가 보낸 경우
			$('#chat_history').append(message_you(onmsg));
		}
		} //입장한 경우
		else if(onmsg.code=="2"){
			console.log("입장한 경우");
			var chat_detail={
			"c_room_no":c_room_no,
			"loginId":loginId
		}
			$.ajax({
		
		
		url:"chat_detail_rest",
		method:"POST",
		data: JSON.stringify(chat_detail),
		async: true,
        contentType: "application/json; charset=utf-8", //헤더의 Content-Type을 설정
        dataType: "JSON", //응답받을 데이터 타입 (XML,JSON,TEXT,HTML,JSONP)    			
    			    			
	
		
		success:function(jsonResult){
			var chatContentArray=jsonResult.data;
			yourId=jsonResult.yourId;
			yourImg = jsonResult.yourImg;
			console.log("채팅방의 상대방 ID:"+yourId);
			console.log(chatContentArray[0]);
			//$('#content').html('채팅 불러오기 성공');
			$('#chat_history').html("");
			$('#chatHead').html("");
			//loginId=$('#loginId').val();
			console.log(loginId);
			/*
			for(const item of chatContentArray){
				
				if(item.user_id!=loginId){
					var youId = item.user_id;
					break;
			
				}else{
				
					var youId = "error";
			
				}
			};*/
			$('#chatHead').append(chat_head(yourId,yourImg));
			
			
			
			
			for(const item of chatContentArray){
				
				if(item.user_id!=loginId){
					console.log("내가 보낸 메세지");
			$('#chat_history').append(message_other(item));
				}else{
					console.log("상대가 보낸 메세지");
			$('#chat_history').append(message_you(item));
				}
			};
		}
		});
		return false;
	}
	}
	
	
	
	ws.onclose=function(evt){
		console.log('소켓 닫기');
		
	}
}
		

