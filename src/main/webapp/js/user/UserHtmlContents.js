function UserHtmlContents(){
}

UserHtmlContents.user_view_content=function(sUser) {
	return `<h5 class="mb-3">Account Details</h5>
                        <form action="#" method="post" id="user_modify_form">
                            <div class="row">
                                <div class="col-12 col-lg-6">
                                    <div class="form-group">
                                        <label for="user_id">ID *</label>
                                        <input type="text" class="form-control" name="user_id" value="${sUser.user_id}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="currentPass">Current Password (Leave blank to leave unchanged)</label>
                                        <input type="password" class="form-control" name="currentPass" value="${sUser.user_pw}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="newPass">New Password (Leave blank to leave unchanged)</label>
                                        <input type="password" class="form-control" name="user_pw">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="confirmPass">Confirm New Password</label>
                                        <input type="password" class="form-control" name="confirmPass">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="user_name">Name *</label>
                                        <input type="text" class="form-control" name="user_name" value="${sUser.user_name}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="user_email">Email *</label>
                                        <input type="email" class="form-control" name="user_email" value='${sUser.user_email}'>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="user_phone">Phone *</label>
                                        <input type="text" class="form-control" name="user_phone" value="${sUser.user_phone}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <!-- <button type="submit" class="btn btn-primary">Save Changes</button> -->
                                    <input type="button" id="btn_user_modify_action" class="btn btn-primary" value="Save Change">
                                </div>
                            </div>
                        </form>`;
}

UserHtmlContents.user_view_addresses=function(addressList){
	return `<p>지역은 최소 1개 이상 최대 2개까지 설정할 수 있어요.</p>
                        <div class="row">
                            <div class="col-12 col-lg-6 mb-5 mb-lg-0">
                                <i class="icofont-spinner icofont-spin"></i>
                                <!--<input type='radio' name='rd_address_no' class='rd_adress1' value="${addressList[0].address_no}" style='margin-bottom:16px'>-->
                                <!--<h6 class="mb-3" style='display:inline'>Address (1)</h6>-->
                                
                                <address>
                                <input type="hidden" name="address_no" value="${addressList[0].address_no}">
                                <input type="hidden" name="address_lat" value="${addressList[0].address_lat}">
                                <input type="hidden" name="address_lng" value="${addressList[0].address_lng}">
                                
                                <input type="button" id="btn_address_first" class="btn btn-outline-primary mb-1" name="address_name" value="${addressList[0].address_name}" >
                                <a href="#" id="btn_remove_first" class="btn btn-secondary mb-1 remove"><i class="icofont-ui-delete"></i></a><br/>
								
								<input id='range1' name="address_range" type="range" value="${addressList[0].address_range}" min="0" max="10" disabled>
                                <label for='range1' class = "range_val bigshop-label bigshop-label-info bigshop-label-pill" value="">${addressList[0].address_range}</label><br/>
                                </address>
                                
                                <!--<a href="#" id="btn_address_first" class="btn btn-primary btn-sm update">주소 수정</a>-->
                            </div>
                            <div class="col-12 col-lg-6 mb-5 mb-lg-0">
                                <address>
                                <input type="hidden" name="address_no" value="${addressList[1].address_no}">
                                <input type="hidden" name="address_lat" value="${addressList[1].address_lat}">
                                <input type="hidden" name="address_lng" value="${addressList[1].address_lng}">
                                
                                <input type="button" id="btn_address_second" class="btn btn-outline-primary mb-1" name="address_name"  value="${addressList[1].address_name}">
                                <a href="#" id="btn_remove_second" class="btn btn-secondary mb-1 remove"><i class="icofont-ui-delete"></i></a><br/>
                                
								<input id='range2' name="address_range" type="range" value="${addressList[1].address_range}" min="0" max="10" disabled>
                                <label for='range2' class = "range_val bigshop-label bigshop-label-info bigshop-label-pill" value="">${addressList[1].address_range}</label><br/>
                                </address>
                                
                                <!--<a href="#" id="btn_address_second" class="btn btn-primary btn-sm update">주소 수정</a>-->
                            
                            </div>
                            <button type="button" class="btn btn-primary mb-1 btn-sm">저장</button>
                        </div>`;
}
UserHtmlContents.user_view_addresses_one=function(addressList){
	return `<p>지역은 최소 1개 이상 최대 2개까지 설정할 수 있어요.</p>
                        <div class="row">
                            <div class="col-12 col-lg-6 mb-5 mb-lg-0">
                            	<i class="icofont-spinner icofont-spin"></i>
                                <address>
                                <input type="hidden" name="address_no" value="${addressList[0].address_no}">
                                <input type="hidden" name="address_lat" value="${addressList[0].address_lat}">
                                <input type="hidden" name="address_lng" value="${addressList[0].address_lng}">
                                
                                <input type="button" id="btn_address_first" class="btn btn-outline-primary mb-1 selected_addressNo" name="address_name" value="${addressList[0].address_name}" style="background:#0f99f3; color:#fff">
                                <a href="#" id="btn_remove_first" class="btn btn-secondary mb-1 remove"><i class="icofont-ui-delete"></i></a><br/>
                                
								<input id='range1' name="address_range" type="range" value="${addressList[0].address_range}" min="0" max="10">
                                <label for='range1' class = "range_val bigshop-label bigshop-label-info bigshop-label-pill" value="">${addressList[0].address_range}</label><br/>
                                </address>
                                <!--<a href="#" id="btn_address_first" class="btn btn-primary btn-sm update">주소 수정</a>-->
                            </div>
                            <div class="col-12 col-lg-6">
                                <!--<input type='radio' name='rd_address_no' class='rd_adress2' value="" disabled style='margin-bottom:16px'>-->
                                <!--<h6 class="mb-3">Address (2)</h6>-->
                                <address>
                                <input type="hidden" name="address_lat" value="">
                                <input type="hidden" name="address_lng" value="">
                                <input type="hidden" name="address_name" value="">

                                <input type="button" id="btn_address_new1" class="btn btn-outline-secondary mb-1 insert" name="" value="주소추가 +" style='border-color:#6c757d'>
                                </address>
                                <!--<a href="#" id="btn_address_new1" class="btn btn-primary btn-sm insert">주소 입력</a>-->
                            </div>
                        </div>`;
}
UserHtmlContents.user_view_addresses_zero=function(addressList){
	return `<p>지역은 최소 1개 이상 최대 2개까지 설정할 수 있어요.</p>
                        <div class="row">
                            <div class="col-12 col-lg-6 mb-5 mb-lg-0">
                                <!--<h6 class="mb-3">Address (1)</h6>-->
                                <address>
                               	<input type="hidden" name="address_lat" value="">
                                <input type="hidden" name="address_lng" value="">
                                <input type="hidden" name="address_name" value="">

                                <input type="button" id="btn_address_new1" class="btn btn-outline-secondary mb-1 insert" name="" value="주소추가 +" style='border-color:#6c757d'>
                                </address>
                                <!--<a href="#" id="btn_address_new1" class="btn btn-primary btn-sm insert">주소 입력</a>-->
                            </div>
                            <!--
                        	<div class="col-12 col-lg-6">
                                <h6 class="mb-3">Address (2)</h6>
                                <address>
                                <input type="hidden" name="address_lat" value="">
                                <input type="hidden" name="address_lng" value="">
                                <input type="hidden" name="address_name" value="">
                                
                                <input type="button" id="btn_address_new2" class="btn btn-outline-secondary mb-1 insert" name="" value="주소추가 +" style='border-color:#6c757d'>
                                </address>
                                <a href="#" id="btn_address_new2" class="btn btn-primary btn-sm insert">주소 입력</a>
                            </div>
                            -->
                        </div>`;
}

UserHtmlContents.user_profile_edit=function(sUser){
	return `<h5 class="mb-3">프로필 수정</h5>
                    	<profile>
      	               <div class="mb-100" style="margin-bottom: 0px">
	                        <div class="col-xl-3">
	                            <img id="user_profile" class="img-circle" src='img/user_profile/${sUser.user_profile}' alt="" user_profile='${sUser.user_profile}' style="width:200px; height:200px; margin:0 auto 0 200px" >
	                        </div>
                        	<form id="image_form"  name="image_form" enctype="multipart/form-data" style="margin:0 auto 0 200px">
	                        	<input type="hidden" name="user_id" id="user_id" value="${sUser.user_id}"><br>
	                        	<input type="file" name="files" id="chooseF" hidden><br>
		                        <input type="submit" id="btn_submit" class="btn btn-outline-primary mb-1 edit_profile" value="사진 선택">
		                        <input type="button" class="btn btn-outline-primary mb-1 remove_profile" value="사진 삭제">
							</form> 
                        </div>
						<div class="shortcodes_content mb-100" style="margin-bottom: 0px">
						</div>
						</profile>`;
}
UserHtmlContents.user_received_reviewList=function(reviewList){
	return `<div class="col-12">
                    <div class="shortcodes_title mb-30">
                        <h4>Bigshop Tables</h4>
                    </div>
                    <div class="shortcodes_content">
                        <div class="table-responsive">
                            <table class="table mb-0 table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">First</th>
                                        <th scope="col">Last</th>
                                        <th scope="col">orders_no</th>
                                        <th scope="col">p_title</th>
                                        <th scope="col">reviewr_id</th>
                                        <th scope="col">reviewr_profile</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    ${
										reviewList.map(review_item_content).join('')	
									}
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>`;
	function review_item_content(review){
		return `<tr>
	                <th scope="row">${review.review_no}</th>
	                <td>${review.review_desc}</td>
	                <td>${review.review_image}</td>
	                <td>${review.orders.orders_no}</td>
	                <td>${review.orders.product.p_title}</td>
	                <td>${review.userInfo.user_id}</td>
	                <td>${review.userInfo.user_profile}</td>
	            </tr>`;
	}
}
UserHtmlContents.user_received_reviewList2=function(reviewList){
	function review_item_content2(review){
		return `<li class="single_comment_area">
                    <div class="comment-wrapper clearfix" style="margin-bottom:60px">
                        <div class="comment-meta">
                            <div class="comment-author-img">
                                <img class="img-circle" src="img/user_profile/${review.userInfo.user_profile}" alt="">
                            </div>
                        </div>
                        <div class="comment-content" style="padding-left:70px">
                            <h5 class="comment-author"><strong>${review.userInfo.user_id}</strong></h5>
                            <h6 >${review.orders.product.p_address_name}</h6>
                            <p>${review.review_desc}</p>
                            <a href="#" class="reply">Reply</a>
                        </div>
                    </div>
                </li>`;
	}
		return `<h5>받은 거래 후기</h5>
				<div class="product_details_tab section_padding_100_0 clearfix" style="padding-top:10px">
                        <!-- Tabs -->
                        <ul class="nav nav-tabs" role="tablist" id="product-details-tab">
                            <li class="nav-item">
                                <a href="#description" class="nav-link active" data-toggle="tab" role="tab">전체후기</a>
                            </li>
                            <li class="nav-item">
                                <a href="#reviews" class="nav-link" data-toggle="tab" role="tab">판매자 후기 <span class="text-muted">(3)</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#addi-info" class="nav-link" data-toggle="tab" role="tab">구매자 후기</a>
                            </li>
                        </ul>
                        <!-- Tab Content -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="description">
                                <!--
                                <div class="description_area">
                                    <h5>Description</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex cum dolore, adipisci vitae quidem. Quaerat tenetur explicabo tempore beatae dolor. Quo ipsa labore, itaque ea ratione. Ratione labore quae corporis.</p>
                                    <div class="embed-responsive embed-responsive-16by9 mb-3">
                                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/tjvOOKx7Ytw?ecver=1" allowfullscreen></iframe>
                                    </div>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic facere quos repudiandae ratione maiores accusantium suscipit, quod fugiat. Fugit quod laborum quidem, quos adipisci harum aspernatur, repudiandae, beatae expedita rerum ipsam dicta molestias et quis sapiente maiores amet laudantium minus nostrum. Nobis amet veritatis autem illo neque voluptas culpa vero iusto distinctio perspiciatis.</p>
                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima animi ab, quis atque, sed nulla veniam quisquam amet perspiciatis, aliquam dolore tempora, consequuntur beatae quae dolor rem repellendus! Vitae architecto sequi quo eaque iusto impedit suscipit non maxime sint totam, nesciunt necessitatibus iste nulla ab, veritatis assumenda.</p>
                                </div>
                                -->
		                        <div class="comment_area mb-50 clearfix">
		                            <h5 class="mb-4">후기 ${reviewList.length}개</h5>
		                            <ol>
		                                <!-- Single Comment Area -->
		                                ${
										reviewList.map(review_item_content2).join('')	
										}
		                            </ol>
		                        </div>
                                
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="reviews">
                                <div class="reviews_area">
                                    <ul>
                                        <li>
                                            <div class="single_user_review mb-15">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Quality</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Designing World</a> on <span>12 Sep 2019</span></p>
                                                </div>
                                            </div>
                                            <div class="single_user_review mb-15">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Design</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Designing World</a> on <span>12 Sep 2019</span></p>
                                                </div>
                                            </div>
                                            <div class="single_user_review">
                                                <div class="review-rating">
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <i class="fa fa-star" aria-hidden="true"></i>
                                                    <span>for Value</span>
                                                </div>
                                                <div class="review-details">
                                                    <p>by <a href="#">Designing World</a> on <span>12 Sep 2019</span></p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="submit_a_review_area mt-50">
                                    <h4>Submit A Review</h4>
                                    <form action="#" method="post">
                                        <div class="form-group">
                                            <span>Your Ratings</span>
                                            <div class="stars">
                                                <input type="radio" name="star" class="star-1" id="star-1">
                                                <label class="star-1" for="star-1">1</label>
                                                <input type="radio" name="star" class="star-2" id="star-2">
                                                <label class="star-2" for="star-2">2</label>
                                                <input type="radio" name="star" class="star-3" id="star-3">
                                                <label class="star-3" for="star-3">3</label>
                                                <input type="radio" name="star" class="star-4" id="star-4">
                                                <label class="star-4" for="star-4">4</label>
                                                <input type="radio" name="star" class="star-5" id="star-5">
                                                <label class="star-5" for="star-5">5</label>
                                                <span></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Nickname</label>
                                            <input type="email" class="form-control" id="name" placeholder="Nazrul">
                                        </div>
                                        <div class="form-group">
                                            <label for="options">Reason for your rating</label>
                                            <select class="form-control small right py-0 w-100" id="options">
                                                <option>Quality</option>
                                                <option>Value</option>
                                                <option>Design</option>
                                                <option>Price</option>
                                                <option>Others</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="comments">Comments</label>
                                            <textarea class="form-control" id="comments" rows="5" data-max-length="150"></textarea>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Submit Review</button>
                                    </form>
                                </div>
                            </div>

                            <div role="tabpanel" class="tab-pane fade" id="addi-info">
                                <div class="additional_info_area">
                                    <h5>Additional Info</h5>
                                    <p>What should I do if I receive a damaged parcel?
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit impedit similique qui, itaque delectus labore.</span></p>
                                    <p>I have received my order but the wrong item was delivered to me.
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quam voluptatum beatae harum tempore, ab?</span></p>
                                    <p>Product Receipt and Acceptance Confirmation Process
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum ducimus, temporibus soluta impedit minus rerum?</span></p>
                                    <p class="mb-0">How do I cancel my order?
                                        <br> <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum eius eum, minima!</span></p>
                                </div>
                            </div>

                        </div>
                    </div>
		`;
}