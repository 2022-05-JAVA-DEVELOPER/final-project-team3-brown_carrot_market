<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<%@taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Bigshop | Responsive E-commerce Template</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="spinner-grow" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>

    <!-- Header Area -->
    <header class="header_area">
        <!-- Top Header Area -->
        <div class="top-header-area">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-6">
                        <div class="welcome-note">
                            <span class="popover--text" data-toggle="popover" data-content="Welcome to Bigshop ecommerce template."><i class="icofont-info-square"></i></span>
                            <span class="text">Welcome to Bigshop ecommerce template.</span>
                        </div>
                    </div>
                    <div class="col-6">
                        <div class="language-currency-dropdown d-flex align-items-center justify-content-end">
                            <!-- Language Dropdown -->
                            <div class="language-dropdown">
                                <div class="dropdown">
                                    <a class="btn btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        English
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1">
                                        <a class="dropdown-item" href="#">Bangla</a>
                                        <a class="dropdown-item" href="#">Arabic</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Currency Dropdown -->
                            <div class="currency-dropdown">
                                <div class="dropdown">
                                    <a class="btn btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        $ USD
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                                        <a class="dropdown-item" href="#">৳ BDT</a>
                                        <a class="dropdown-item" href="#">€ Euro</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Menu -->
        <div class="bigshop-main-menu">
            <div class="container">
                <div class="classy-nav-container breakpoint-off">
                    <nav class="classy-navbar" id="bigshopNav">

                        <!-- Nav Brand -->
                        <a href="index.html" class="nav-brand"><img src="img/core-img/logo.png" alt="logo"></a>

                        <!-- Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">
                            <!-- Close -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="#">Home</a>
                                        <ul class="dropdown">
                                            <li><a href="index-1.html">Home - 1</a></li>
                                            <li><a href="index-2.html">Home - 2</a></li>
                                            <li><a href="index-3.html">Home - 3</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Shop</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Shop Grid</a>
                                                <ul class="dropdown">
                                                    <li><a href="shop-grid-left-sidebar.html">Shop Grid Left Sidebar</a></li>
                                                    <li><a href="shop-grid-right-sidebar.html">Shop Grid Right Sidebar</a></li>
                                                    <li><a href="shop-grid-top-sidebar.html">Shop Grid Top Sidebar</a></li>
                                                    <li><a href="shop-grid-no-sidebar.html">Shop Grid No Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Shop List</a>
                                                <ul class="dropdown">
                                                    <li><a href="shop-list-left-sidebar.html">Shop List Left Sidebar</a></li>
                                                    <li><a href="shop-list-right-sidebar.html">Shop List Right Sidebar</a></li>
                                                    <li><a href="shop-list-top-sidebar.html">Shop List Top Sidebar</a></li>
                                                    <li><a href="shop-list-no-sidebar.html">Shop List No Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="product-details.html">Single Product</a></li>
                                            <li><a href="cart.html">Cart</a></li>
                                            <li><a href="#">Checkout</a>
                                                <ul class="dropdown">
                                                    <li><a href="checkout-1.html">Login</a></li>
                                                    <li><a href="checkout-2.html">Billing</a></li>
                                                    <li><a href="checkout-3.html">Shipping Method</a></li>
                                                    <li><a href="checkout-4.html">Payment Method</a></li>
                                                    <li><a href="checkout-5.html">Review</a></li>
                                                    <li><a href="checkout-complate.html">Complate</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Account Page</a>
                                                <ul class="dropdown">
                                                    <li><a href="my-account.html">- Dashboard</a></li>
                                                    <li><a href="order-list.html">- Orders</a></li>
                                                    <li><a href="downloads.html">- Downloads</a></li>
                                                    <li><a href="addresses.html">- Addresses</a></li>
                                                    <li><a href="account-details.html">- Account Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="wishlist.html">Wishlist</a></li>
                                            <li><a href="compare.html">Compare</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Pages</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="about-us.html">- About Us</a></li>
                                                <li><a href="faq.html">- FAQ</a></li>
                                                <li><a href="contact.html">- Contact</a></li>
                                                <li><a href="login.html">- Login &amp; Register</a></li>
                                                <li><a href="404.html">- 404</a></li>
                                                <li><a href="500.html">- 500</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="my-account.html">- Dashboard</a></li>
                                                <li><a href="order-list.html">- Orders</a></li>
                                                <li><a href="downloads.html">- Downloads</a></li>
                                                <li><a href="addresses.html">- Addresses</a></li>
                                                <li><a href="account-details.html">- Account Details</a></li>
                                                <li><a href="coming-soon.html">- Coming Soon</a></li>
                                            </ul>
                                            <div class="single-mega cn-col-2">
                                                <div class="megamenu-slides owl-carousel">
                                                    <a href="shop-grid-left-sidebar.html">
                                                        <img src="img/bg-img/mega-slide-2.jpg" alt="">
                                                    </a>
                                                    <a href="shop-list-left-sidebar.html">
                                                        <img src="img/bg-img/mega-slide-1.jpg" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li><a href="#">Blog</a>
                                        <ul class="dropdown">
                                            <li><a href="blog-with-left-sidebar.html">Blog Left Sidebar</a></li>
                                            <li><a href="blog-with-right-sidebar.html">Blog Right Sidebar</a></li>
                                            <li><a href="blog-with-no-sidebar.html">Blog No Sidebar</a></li>
                                            <li><a href="single-blog.html">Single Blog</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Elements</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="accordian.html">- Accordions</a></li>
                                                <li><a href="alerts.html">- Alerts</a></li>
                                                <li><a href="badges.html">- Badges</a></li>
                                                <li><a href="blockquotes.html">- Blockquotes</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="breadcrumb.html">- Breadcrumbs</a></li>
                                                <li><a href="buttons.html">- Buttons</a></li>
                                                <li><a href="forms.html">- Forms</a></li>
                                                <li><a href="gallery.html">- Gallery</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="heading.html">- Headings</a></li>
                                                <li><a href="icon-fontawesome.html">- Icon FontAwesome</a></li>
                                                <li><a href="icon-icofont.html">- Icon Ico Font</a></li>
                                                <li><a href="labels.html">- Labels</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="modals.html">- Modals</a></li>
                                                <li><a href="pagination.html">- Pagination</a></li>
                                                <li><a href="progress-bars.html">- Progress Bars</a></li>
                                                <li><a href="tables.html">- Tables</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                        </div>

                        <!-- Hero Meta -->
                        <div class="hero_meta_area ml-auto d-flex align-items-center justify-content-end">
                            <!-- Search -->
                            <div class="search-area">
                                <div class="search-btn"><i class="icofont-search"></i></div>
                                <!-- Form -->
                                <div class="search-form">
                                    <input type="search" class="form-control" placeholder="Search">
                                    <input type="submit" class="d-none" value="Send">
                                </div>
                            </div>

                            <!-- Wishlist -->
                            <div class="wishlist-area">
                                <a href="wishlist.html" class="wishlist-btn"><i class="icofont-heart"></i></a>
                            </div>

                            <!-- Cart -->
                            <div class="cart-area">
                                <div class="cart--btn"><i class="icofont-cart"></i> <span class="cart_quantity">2</span></div>

                                <!-- Cart Dropdown Content -->
                                <div class="cart-dropdown-content">
                                    <ul class="cart-list">
                                        <li>
                                            <div class="cart-item-desc">
                                                <a href="#" class="image">
                                                    <img src="img/product-img/top-1.png" class="cart-thumb" alt="">
                                                </a>
                                                <div>
                                                    <a href="#">Kid's Fashion</a>
                                                    <p>1 x - <span class="price">$32.99</span></p>
                                                </div>
                                            </div>
                                            <span class="dropdown-product-remove"><i class="icofont-bin"></i></span>
                                        </li>
                                        <li>
                                            <div class="cart-item-desc">
                                                <a href="#" class="image">
                                                    <img src="img/product-img/best-4.png" class="cart-thumb" alt="">
                                                </a>
                                                <div>
                                                    <a href="#">Headphone</a>
                                                    <p>2x - <span class="price">$49.99</span></p>
                                                </div>
                                            </div>
                                            <span class="dropdown-product-remove"><i class="icofont-bin"></i></span>
                                        </li>
                                    </ul>
                                    <div class="cart-pricing my-4">
                                        <ul>
                                            <li>
                                                <span>Sub Total:</span>
                                                <span>$822.96</span>
                                            </li>
                                            <li>
                                                <span>Shipping:</span>
                                                <span>$30.00</span>
                                            </li>
                                            <li>
                                                <span>Total:</span>
                                                <span>$856.63</span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="cart-box">
                                        <a href="checkout-1.html" class="btn btn-primary d-block">Checkout</a>
                                    </div>
                                </div>
                            </div>

                            <!-- Account -->
                            <div class="account-area">
                                <div class="user-thumbnail">
                                    <img src="img/bg-img/user.jpg" alt="">
                                </div>
                                <ul class="user-meta-dropdown">
                                    <li class="user-title"><span>Hello,</span> Lim Sarah</li>
                                    <li><a href="my-account.html">My Account</a></li>
                                    <li><a href="order-list.html">Orders List</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                    <li><a href="login.html"><i class="icofont-logout"></i> Logout</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->
    
    <!-- Quick View Modal Area -->
    <div class="modal fade" id="quickview" tabindex="-1" role="dialog" aria-labelledby="quickview" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal-body">
                    <div class="quickview_body">
                        <div class="container">
                            <div class="row">
                                <div class="col-12 col-lg-5">
                                    <div class="quickview_pro_img">
                                        <img class="first_img" src="img/product-img/new-1-back.png" alt="">
                                        <img class="hover_img" src="img/product-img/new-1.png" alt="">
                                        <!-- Product Badge -->
                                        <div class="product_badge">
                                            <span class="badge-new">New</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-lg-7">
                                    <div class="quickview_pro_des">
                                        <h4 class="title">Boutique Silk Dress</h4>
                                        <div class="top_seller_product_rating mb-15">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                        <h5 class="price">$120.99 <span>$130</span></h5>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia expedita quibusdam aspernatur, sapiente consectetur accusantium perspiciatis praesentium eligendi, in fugiat?</p>
                                        <a href="#">View Full Product Details</a>
                                    </div>
                                    <!-- Add to Cart Form -->
                                    <form class="cart" method="post">
                                        <div class="quantity">
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="12" name="quantity" value="1">
                                        </div>
                                        <button type="submit" name="addtocart" value="5" class="cart-submit">Add to cart</button>
                                        <!-- Wishlist -->
                                        <div class="modal_pro_wishlist">
                                            <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                        </div>
                                        <!-- Compare -->
                                        <div class="modal_pro_compare">
                                            <a href="compare.html"><i class="icofont-exchange"></i></a>
                                        </div>
                                    </form>
                                    <!-- Share -->
                                    <div class="share_wf mt-30">
                                        <p>Share with friends</p>
                                        <div class="_icon">
                                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                            <a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quick View Modal Area -->

    <!-- Breadcumb Area -->
    <div class="breadcumb_area">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <h5>Product Details</h5>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Shop</a></li>
                        <li class="breadcrumb-item active">Product Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcumb Area -->

    <!-- Single Product Details Area -->
    <section class="single_product_details_area section_padding_100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-6">
                    <div class="single_product_thumb">
                        <div id="product_details_slider" class="carousel slide" data-ride="carousel">

                            <!-- Carousel Inner -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <a class="gallery_img" href="img/product-img/pd-big-thumb-1.png" title="First Slide">
                                        <img class="d-block w-100" src="img/product-img/pd-big-thumb-1.png" alt="First slide">
                                    </a>
                                    <!-- Product Badge -->
                                    <div class="product_badge">
                                        <span class="badge-new">New</span>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/pd-big-thumb-2.png" title="Second Slide">
                                        <img class="d-block w-100" src="img/product-img/pd-big-thumb-2.png" alt="Second slide">
                                    </a>
                                    <!-- Product Badge -->
                                    <div class="product_badge">
                                        <span class="badge-new">Sale</span>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/pd-big-thumb-3.png" title="Third Slide">
                                        <img class="d-block w-100" src="img/product-img/pd-big-thumb-3.png" alt="Third slide">
                                    </a>
                                    <!-- Product Badge -->
                                    <div class="product_badge">
                                        <span class="badge-new">-20%</span>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <a class="gallery_img" href="img/product-img/pd-big-thumb-4.png" title="Fourth Slide">
                                        <img class="d-block w-100" src="img/product-img/pd-big-thumb-4.png" alt="Fourth slide">
                                    </a>
                                    <!-- Product Badge -->
                                    <div class="product_badge">
                                        <span class="badge-new">Hot</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Carosel Indicators -->
                            <ol class="carousel-indicators">
                                <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(img/product-img/pd-big-thumb-1.png);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(img/product-img/pd-big-thumb-2.png);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(img/product-img/pd-big-thumb-3.png);">
                                </li>
                                <li data-target="#product_details_slider" data-slide-to="3" style="background-image: url(img/product-img/pd-big-thumb-4.png);">
                                </li>
                            </ol>
                        </div>
                    </div>
                </div>

                <!-- Single Product Description -->
                <div class="col-12 col-lg-6">
                    <div class="single_product_desc">
                        <h4 class="title mb-2">${product.p_title}</h4>
                        <div class="single_product_ratings mb-2">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <span class="text-muted">(8 Reviews)</span>
                        </div>
                        <h4 class="price mb-4">${product.p_price} </h4>

                        <!-- Overview -->
                        <div class="short_overview mb-4">
                            <h6>Overview</h6>
                            <p>${product.p_desc}</p>
                        </div>

                        <!-- Color Option -->
                        <div class="widget p-0 color mb-3">
                            <h6 class="widget-title">Color</h6>
                            <div class="widget-desc d-flex">
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                                    <label class="custom-control-label black" for="customRadio1"></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                                    <label class="custom-control-label pink" for="customRadio2"></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
                                    <label class="custom-control-label red" for="customRadio3"></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio4" name="customRadio" class="custom-control-input">
                                    <label class="custom-control-label purple" for="customRadio4"></label>
                                </div>
                                <div class="custom-control custom-radio">
                                    <input type="radio" id="customRadio5" name="customRadio" class="custom-control-input">
                                    <label class="custom-control-label white" for="customRadio5"></label>
                                </div>
                            </div>
                        </div>

                        <!-- Size Option -->
                       

                        <!-- Add to Cart Form -->
                        <form class="cart clearfix my-5 d-flex flex-wrap align-items-center" method="post">
                            <div class="quantity">
                                <input type="number" class="qty-text form-control" id="qty2" step="1" min="1" max="12" name="quantity" value="1">
                            </div>
                            <button type="submit" name="addtocart" value="5" class="btn btn-primary mt-1 mt-md-0 ml-1 ml-md-3">Add to cart</button>
                        </form>

                        <!-- Others Info -->
                        <div class="others_info_area mb-3 d-flex flex-wrap">
                            <a class="add_to_wishlist" href="wishlist.html"><i class="fa fa-heart" aria-hidden="true"></i> WISHLIST</a>
                            <a class="add_to_compare" href="compare.html"><i class="fa fa-th" aria-hidden="true"></i> COMPARE</a>
                            <a class="share_with_friend" href="#"><i class="fa fa-share" aria-hidden="true"></i> SHARE WITH FRIEND</a>
                        </div>

                        <!-- Size Guide -->
                      

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="product_details_tab section_padding_100_0 clearfix">
                        <!-- Tabs -->
                        <ul class="nav nav-tabs" role="tablist" id="product-details-tab">
                            <li class="nav-item">
                                <a href="#description" class="nav-link active" data-toggle="tab" role="tab">Description</a>
                            </li>
                            <li class="nav-item">
                                <a href="#reviews" class="nav-link" data-toggle="tab" role="tab">Reviews <span class="text-muted">(3)</span></a>
                            </li>
                            <li class="nav-item">
                                <a href="#addi-info" class="nav-link" data-toggle="tab" role="tab">Additional Information</a>
                            </li>
                            <li class="nav-item">
                                <a href="#refund" class="nav-link" data-toggle="tab" role="tab">Return &amp; Cancellation</a>
                            </li>
                        </ul>
                        <!-- Tab Content -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show active" id="description">
                                <div class="description_area">
                                    <h5>Description</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur nulla similique deserunt nemo ea eum expedita, et repellat repudiandae unde quia molestias deleniti incidunt, ad cupiditate. Corporis ipsam minus officiis neque magni harum accusantium nobis labore veritatis, consectetur ab rerum.</p>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex cum dolore, adipisci vitae quidem. Quaerat tenetur explicabo tempore beatae dolor. Quo ipsa labore, itaque ea ratione. Ratione labore quae corporis.</p>

                                    <div class="embed-responsive embed-responsive-16by9 mb-3">
                                        <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/tjvOOKx7Ytw?ecver=1" allowfullscreen></iframe>
                                    </div>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Hic facere quos repudiandae ratione maiores accusantium suscipit, quod fugiat. Fugit quod laborum quidem, quos adipisci harum aspernatur, repudiandae, beatae expedita rerum ipsam dicta molestias et quis sapiente maiores amet laudantium minus nostrum. Nobis amet veritatis autem illo neque voluptas culpa vero iusto distinctio perspiciatis.</p>

                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima animi ab, quis atque, sed nulla veniam quisquam amet perspiciatis, aliquam dolore tempora, consequuntur beatae quae dolor rem repellendus! Vitae architecto sequi quo eaque iusto impedit suscipit non maxime sint totam, nesciunt necessitatibus iste nulla ab, veritatis assumenda.</p>
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

                            <div role="tabpanel" class="tab-pane fade" id="refund">
                                <div class="refund_area">
                                    <h6>Return Policy</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa quidem, eos eius laboriosam voluptates totam mollitia repellat rem voluptate obcaecati quas fuga similique impedit cupiditate vitae repudiandae. Rem, tenetur placeat!</p>

                                    <h6>Return Criteria</h6>
                                    <ul class="mb-30 ml-30">
                                        <li><i class="icofont-check"></i> Package broken</li>
                                        <li><i class="icofont-check"></i> Physical damage in the product</li>
                                        <li><i class="icofont-check"></i> Software/hardware problem</li>
                                        <li><i class="icofont-check"></i> Accessories missing or damaged etc.</li>
                                    </ul>

                                    <h6>Q. What should I do if I receive a damaged parcel?</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit impedit similique qui, itaque delectus labore.</p>

                                    <h6>Q. I have received my order but the wrong item was delivered to me.</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quam voluptatum beatae harum tempore, ab?</p>

                                    <h6>Q. Product Receipt and Acceptance Confirmation Process</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum ducimus, temporibus soluta impedit minus rerum?</p>

                                    <h6>Q. How do I cancel my order?</h6>
                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum eius eum, minima!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Single Product Details Area End -->

    <!-- Related Products Area -->
    <section class="you_may_like_area section_padding_0_100 clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section_heading new_arrivals">
                        <h5>You May Also Like</h5>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="you_make_like_slider owl-carousel">
                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-1-back.png" alt="">
                                <img class="hover_img" src="img/product-img/new-1.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Top</p>
                                <a href="#">Boutique Silk Dress</a>
                                <h6 class="product-price">$48.99</h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-6.png" alt="">
                                <img class="hover_img" src="img/product-img/new-6-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Lim</p>
                                <a href="#">Gracia Plaid Dress</a>
                                <h6 class="product-price">$17.63</h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-2.png" alt="">
                                <img class="hover_img" src="img/product-img/new-2-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Sarah</p>
                                <a href="#">Flower Textured Dress</a>
                                <h6 class="product-price">$24 <span>$49</span></h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-4.png" alt="">
                                <img class="hover_img" src="img/product-img/new-4-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Lim</p>
                                <a href="#">Gracia Plaid Dress</a>
                                <h6 class="product-price">$78.24</h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-1-back.png" alt="">
                                <img class="hover_img" src="img/product-img/new-1.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Top</p>
                                <a href="#">Boutique Silk Dress</a>
                                <h6 class="product-price">$48.99</h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-6.png" alt="">
                                <img class="hover_img" src="img/product-img/new-6-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Lim</p>
                                <a href="#">Gracia Plaid Dress</a>
                                <h6 class="product-price">$17.63</h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-2.png" alt="">
                                <img class="hover_img" src="img/product-img/new-2-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Sarah</p>
                                <a href="#">Flower Textured Dress</a>
                                <h6 class="product-price">$24 <span>$49</span></h6>
                            </div>
                        </div>

                        <!-- Single Product -->
                        <div class="single-product-area">
                            <div class="product_image">
                                <!-- Product Image -->
                                <img class="normal_img" src="img/product-img/new-4.png" alt="">
                                <img class="hover_img" src="img/product-img/new-4-back.png" alt="">

                                <!-- Product Badge -->
                                <div class="product_badge">
                                    <span>New</span>
                                </div>

                                <!-- Wishlist -->
                                <div class="product_wishlist">
                                    <a href="wishlist.html"><i class="icofont-heart"></i></a>
                                </div>

                                <!-- Compare -->
                                <div class="product_compare">
                                    <a href="compare.html"><i class="icofont-exchange"></i></a>
                                </div>
                            </div>

                            <!-- Product Description -->
                            <div class="product_description">
                                <!-- Add to cart -->
                                <div class="product_add_to_cart">
                                    <a href="#"><i class="icofont-shopping-cart"></i> Add to Cart</a>
                                </div>

                                <!-- Quick View -->
                                <div class="product_quick_view">
                                    <a href="#" data-toggle="modal" data-target="#quickview"><i class="icofont-eye-alt"></i> Quick View</a>
                                </div>

                                <p class="brand_name">Lim</p>
                                <a href="#">Gracia Plaid Dress</a>
                                <h6 class="product-price">$78.24</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Products Area -->

    <!-- Footer Area -->
    <footer class="footer_area section_padding_100_0">
        <div class="container">
            <div class="row">
                <!-- Single Footer Area -->
                <div class="col-12 col-sm-6 col-md-5 col-lg-4 col-xl-3">
                    <div class="single_footer_area mb-100">
                        <div class="footer_heading mb-4">
                            <h6>Contact Us</h6>
                        </div>
                        <ul class="footer_content">
                            <li><span>Address:</span> Lords, London, UK - 1259</li>
                            <li><span>Phone:</span> 002 63695 24624</li>
                            <li><span>FAX:</span> 002 78965 369552</li>
                            <li><span>Email:</span> support@example.com</li>
                        </ul>
                        <div class="footer_social_area mt-15">
                            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Single Footer Area -->
                <div class="col-12 col-sm-6 col-md col-lg-4 col-xl-2">
                    <div class="single_footer_area mb-100">
                        <div class="footer_heading mb-4">
                            <h6>Information</h6>
                        </div>
                        <ul class="footer_widget_menu">
                            <li><a href="#"><i class="icofont-rounded-right"></i> Your Account</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Free Shipping Policy</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Your Cart</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Return Policy</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Free Coupon</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Delivary Info</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Single Footer Area -->
                <div class="col-12 col-sm-6 col-md col-lg-4 col-xl-2">
                    <div class="single_footer_area mb-100">
                        <div class="footer_heading mb-4">
                            <h6>Account</h6>
                        </div>
                        <ul class="footer_widget_menu">
                            <li><a href="#"><i class="icofont-rounded-right"></i> Product Support</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Terms &amp; Conditions</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Help</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Payment Method</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Affiliate Program</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Single Footer Area -->
                <div class="col-12 col-sm-6 col-md-5 col-lg-4 col-xl-2">
                    <div class="single_footer_area mb-100">
                        <div class="footer_heading mb-4">
                            <h6>Support</h6>
                        </div>
                        <ul class="footer_widget_menu">
                            <li><a href="#"><i class="icofont-rounded-right"></i> Payment Method</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Help</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Product Support</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Terms &amp; Conditions</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Privacy Policy</a></li>
                            <li><a href="#"><i class="icofont-rounded-right"></i> Affiliate Program</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Single Footer Area -->
                <div class="col-12 col-md-7 col-lg-8 col-xl-3">
                    <div class="single_footer_area mb-50">
                        <div class="footer_heading mb-4">
                            <h6>Join our mailing list</h6>
                        </div>
                        <div class="subscribtion_form">
                            <form action="#" method="post">
                                <input type="email" name="mail" class="form-control mail" placeholder="Your E-mail Addrees">
                                <button type="submit" class="submit"><i class="icofont-long-arrow-right"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="single_footer_area mb-100">
                        <div class="footer_heading mb-4">
                            <h6>Download our Mobile Apps</h6>
                        </div>
                        <div class="apps_download">
                            <a href="#"><img src="img/core-img/play-store.png" alt="Play Store"></a>
                            <a href="#"><img src="img/core-img/app-store.png" alt="Apple Store"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer Bottom -->
        <div class="footer_bottom_area">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Copywrite -->
                    <div class="col-12 col-md-6">
                        <div class="copywrite_text">
                            <p>Made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="#">Designing World</a></p>
                        </div>
                    </div>
                    <!-- Payment Method -->
                    <div class="col-12 col-md-6">
                        <div class="payment_method">
                            <img src="img/payment-method/paypal.png" alt="">
                            <img src="img/payment-method/maestro.png" alt="">
                            <img src="img/payment-method/western-union.png" alt="">
                            <img src="img/payment-method/discover.png" alt="">
                            <img src="img/payment-method/american-express.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/default/classy-nav.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/default/scrollup.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jarallax.min.js"></script>
    <script src="js/jarallax-video.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/default/active.js"></script>

</body>

</html>