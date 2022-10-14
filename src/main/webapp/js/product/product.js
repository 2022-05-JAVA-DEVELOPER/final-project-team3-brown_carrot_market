/**
 * 
 */
 function productCreateForm() {
	
	window.location.href='product_write_form';
}

function productList() {
	window.location.href='product_list';
}
function productCreate() {
	if (document.product_write_form.p_title.value == "") {
		alert("제목을 입력하십시요.");
		document.product_write_form.p_title.focus();
		return false;
	}
	if (document.product_write_form.p_price.value == "") {
		alert("가격을 입력하십시요.");
		document.product_write_form.p_price.focus();
		return false;
	}

	if (document.product_write_form.p_desc.value == "") {
		alert("내용을 입력하십시요.");
		document.product_write_form.p_desc.focus();
		return false;
	}
	
	//사진 리스트 업로드
	const formData = new FormData();
	formData.append('pi',$("up_file4")); //이게 맞나?
	$.ajax({
		url:'user/upload',
		type:'POST',
		processData:false,	//파일전송시 반드시 false
		contentType:false,
		data:formData,
		success:function(jsonResult){
		console.log(jsonResult);
		 //사진이름받기
		 $.ajax({
				  url : 'product_write_action',
				  method : 'POST',
				  data: {
						"pi_name": jsonResult.newFileName 
							},
							dataType : 'json',
							success : function(jsonResult) {
								console.log(jsonResult.msg);
			}
		  });
		}
	});
	
	
	document.product_write_form.action = "product_write_action";
	document.product_write_form.method='POST';
	document.product_write_form.submit();
}

function productSell(){
	document.product_modify_sell_action.action = "product_modify_sell_action"
	document.product_modify_sell_action.method='POST';
	document.product_modify_sell_action.submit();
}

/********************채팅하기!!**************************/
$(document).ready(function(){
	$('#btnCreate').click(function(){
		console.log('채팅방 생성 버튼 클릭');
		document.chatStart.action="create_room";
		document.chatStart.method='POST';
		document.chatStart.submit();
		
	});
	});
	
