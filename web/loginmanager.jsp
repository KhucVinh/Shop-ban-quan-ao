<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="icon" href="./imgages/logoboohoo.png">
        <link rel="stylesheet" href="style-loginmn.css">
        <link rel="stylesheet" href="./accest/css/style-head-women.css">

        <script src="https://kit.fontawesome.com/9d9613e72c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="login.css">
        <link rel="stylesheet" href="accest/css/style1_women.css">
        <style>
            .product-fillter form{
                list-style-type: none;
                padding: 10px 20px;
                max-height: 200px;
                background: #fff;
                overflow-y: auto;
                display: grid;
                grid-template-columns: repeat(2, minmax(0, 1fr));
                gap: 10px;
                animation: Slide linear 1s;

            }
            .col1 div, .col2 div {
                margin-left: 10%;
                width: 80%;
                height: 200px;

                background-color: #F8F8F8;
                text-align: left;
                font-size: 12px;

            }
        </style>
    </head>
    <body >
        <header>
            <div class="row">
                <div class="adv" style=" background: #ff7bbb;">
                    <div class="ani">
                        <div class="ani1">
                            <a href="https://us.boohoo.com/womens/promo/flash-sale-2?home_primarysplash_flash-sale-2">
                                SPRING SAVINGS - UP TO 80% OFF!
                            </a>
                        </div>

                        <!-- <div class="ani1">
                            <a href="https://us.boohoo.com/womens/promo/flash-sale-2?home_primarysplash_flash-sale-2"> OR
                                50%
                                OFF + FREE SHIPPING!</a>
                        </div> -->
                    </div>
                    <p>*Discounts may not be based on former prices. <a id="policy"
                                                                        href="https://us.boohoo.com/page/terms-and-conditions.html#pricing-policy-anchor">See pricing
                            policy</a> </p>

                </div>
            </div>
            <div class="row">
                <div class=" row1">
                    <div class="nav-bar">
                        <a id="bartab" href="#"><span class="material-symbols-outlined">
                                density_medium
                            </span></a>
                        <div class="bartab">
                            <div id="bartab-content" class="bartab-content">
                                <div class="bartab-list">
                                    <button id="women"><a href="#">WOMENS</a></button>
                                    <button id="men"><a href="#">MENS</a></button>
                                </div>
                                <div class="menubartab">
                                    <div class="img-menu">50% OFF + FREE SHIPPING!</div>

                                    <div class="menubar-list"><a href="#"> OFFERS</a>

                                    </div>
                                    <div class="menubar-list"><a href="#">NEW IN</a>


                                    </div>
                                    <div class="menubar-list"><a href="#">ALL CLOTHING</a>


                                    </div>
                                    <div class="menubar-list"><a href="#">PLUS SIZE CLOTHING</a></div>
                                    <div class="menubar-list"><a href="#">TOPS</a></div>
                                    <div class="menubar-list"><a href="#">SPRING</a></div>
                                    <div class="menubar-list"><a href="#">OCCASION WEAR</a></div>
                                    <div class="menubar-list"><a href="#">FESTIVAL OUTFITS</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SALE</a></div>
                                    <!-- <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div> -->


                                    <div class="img-menu"></div>
                                    <div class="emty-element"></div> <!--tạo phần tử rỗng để không bị mất ptu cuối-->
                                </div>
                                <div class="menubartab-men">
                                    <div class="img-menu-men"></div>

                                    <div class="menubar-list"><a href="#"> OFFERS</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S NEW IN</a></div>
                                    <div class="menubar-list"><a href="#">CLOTHING</a></div>
                                    <div class="menubar-list"><a href="#">PLUS & TALL</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S ACTIVEWEAR</a></div>
                                    <div class="menubar-list"><a href="#">GOING OUT</a></div>
                                    <div class="menubar-list"><a href="#">MΛN</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S SHOES & ACCESSORIES</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S SALE</a></div>

                                    <!-- <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div> -->


                                    <div class="img-menu-men"></div>
                                    <div class="emty-element"></div> <!--tạo phần tử rỗng để không bị mất ptu cuối-->
                                </div>
                            </div>
                            <button id="close" onclick="slideOut()"><a href="#" class="fa-solid fa-xmark"></a></button>
                        </div>


                    </div>
                    <div class="logo-nav">
                        <ul class="nav">
                            <li>
                                <div class="logo">
                                    <a href="#"><img src="./accest/img/boohoo_logo_black.png" alt=""></a>
                                </div>
                            </li>
                            <li class="list1">
                                <div>
                                    <p><a href="./women">WOMENS</a> </p>
                                </div>
                            </li>
                            <li class="list2">
                                <div>
                                    <p><a href="./men">MENS</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="search1">
                        <form style="min-width: 100%;display: flex;align-items: center; flex-direction: row-reverse" action="search" method="get">
                            <input value="${txts}" name="txt" type="search" placeholder="What are you looking for?">
                            <button type="submit"> <a href="#"><span class="material-symbols-outlined">
                                        search
                                    </span></a></button>
                        </form>
                    </div>

                    <div class="user">



                        <li> <a id="login-singup" class="fa-regular fa-user" href="#"></a>
                            <c:if test = "${fname.fname == null}">
                                <div id="containerlogin" class="containerlogin">
                                    <div class="container-log">


                                        <div class="content hop1">
                                            <div class="header">
                                                <span class="text1">LOGIN</span>
                                                <a href="women"><button id="delete" onclick="slideOut2()">
                                                        <div class="delete">X</div>
                                                    </button>
                                                </a>
                                            </div>
                                            <form action="login" method="post">
                                                <div class="body body-email">
                                                    <span class="text">Email</span>

                                                    <input type="text" name="email" class="input input__email" placeholder="Nhập email của bạn">
                                                </div>
                                                <div class="body body-mk">
                                                    <span class="text">Password</span>
                                                    <div class="pw">
                                                        <input type="password" name="password" id="passwordField" class="input input__password" placeholder="Nhập mật khẩu của bạn">
                                                        <button class="input__password-show" onclick="showpass(event)">
                                                            Show
                                                        </button>
                                                    </div>
                                                    <% if (request.getAttribute("error") != null) { %>
                                                    <p class="error-message" style="padding-bottom: 15px; margin-top: -20px; color: red"><%= request.getAttribute("error") %></p>
                                                    <% } %>	
                                                </div>
                                                <div class="save-password">
                                                    <a href="" class="save-password__click-on">
                                                        <div class="save-password__empty"></div>

                                                    </a>

                                                    <span class="save-password__text">Remember me</span>
                                                </div>
                                                <div class="click-login">
                                                    <button type="submit" class=" click-login__login">LOG IN</button>
                                                    <a href="#" class="click-login__forget">Forgot Password?</a>
                                                </div>
                                            </form>

                                        </div>

                                        <div class="content hop2">
                                            <a href="dangki.jsp">
                                                <button class=" click-login__login">REGISTER</button></a>
                                        </div>
                                        <div class="img-log"
                                             style="background-image: url(https://media.boohoo.com/i/boohooamplience/375x88_BANNER_NEWIN_2);">
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                        </li>
                        <c:if test="${fname.fname != null}">        
                            <li style=" border-right:1px solid #ddd; margin-top: 0px; margin-left: -5px; padding-right: 20px;">

                                <a style="font-size:1.5rem" href="change?phone=${fname.phone}"> 

                                    ${fname.fname}


                                </a>

                            </li>  
                        </c:if>
                        <li  style=" margin-top:5px"> <a href="#"><span class="material-symbols-outlined">
                                    favorite
                                </span></a></li>
                        <li  style=" margin-top:4px"> <a href="#" id="viewcart"><span class="material-symbols-outlined">
                                    shopping_bag
                                </span></a>
                            <div class="containcart" id="containcart">
                                <div class="container-cart">
                                    <div class="viewcart">
                                        <div class="header">
                                            <div class="header__text">YOUR CART</div>
                                            <div class="header__delete"><button onclick="slideOut3()">X</button></div>
                                        </div>
                                        <div id="cart" style="max-height: 320px; overflow-y: auto;">

                                        </div>

                                        <p>Total: <span id="total">$0.00</span></p>
                                        <div class="viewcart__sale">
                                            <span class="viewcart__text">*Plus applicable taxes</span>
                                            <div class="btn__viewcart flex ">
                                                <div class="btn__1">
                                                    <button class="btn btn--1">VIEW CART</button>
                                                </div>
                                                <div class="btn__2">
                                                    <button class="btn btn--2" onclick="checkout()">CHECKOUT</button>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="vc__img"
                                             style="background-image: url(https://media.boohoo.com/i/boohooamplience/minicart-banner-bottom-nh?qlt=default&fmt=auto);">
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </li>
                        <li> <a href="dangxuat" style=" margin-top:9px">
                                <c:if test="${fname.fname != null}">
                                    <span class="material-symbols-outlined">
                                        logout
                                    </span>
                                </c:if>
                            </a></li>


                    </div>
                </div>


            </div>
            <div class="menu">
                <div class="menu-bar">
                    <c:forEach items="${requestScope.listC}" var="c">
                        <li class="menu-bar1"><a href="category?cid=${c.cid}" class="menu-bar11">${c.cname}</a>
                            <ul class="menu1">
                                <li class="sub-menu">
                                    <p> NEW IN</p>
                                    <ul>
                                        <li><a href="category?cid=${c.cid}">${c.cname}</a></li>
                                        <li><a href="#"> New In Clothing</a></li>
                                        <li><a href="#">New In Dresses</a></li>
                                        <li><a href="#"> New In Accessories</a></li>
                                        <li><a href="#">New In Beauty</a></li>
                                        <li><a href="#">Just Landed Today</a></li>
                                        <li><a href="#">Just Landed</a></li>
                                        <li><a href="#">Bestsellers</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu">
                                    <p> NEW IN BY FIGURE</p>
                                    <ul>
                                        <li><a href="#">New In Plus & Curve</a></li>
                                        <li><a href="#">New In Petite</a></li>
                                        <li><a href="#"> New In Tall</a></li>
                                        <li><a href="#">New In Maternity</a></li>
                                    </ul>
                                </li>

                                <li class="sub-menu">
                                    <p>OFFERS</p>
                                    <ul>
                                        <li><a href="#">
                                                <p> App Exclusive - Free Shipping Over $50!*</p>
                                            </a></li>
                                        <li><a href="#">
                                                <p>App Exclusive - Free Shipping Over $50!* </p>
                                            </a></li>
                                    </ul>
                                </li>

                            </ul>
                        </li>


                    </c:forEach>
                </div>
            </div>




        </header>




        <div class="login" style="margin-top: 159px;
             height: auto;
             padding-top: 20px;
             background-color: #f8f8f8;
             padding-bottom: 20px;
             border-bottom: 1px solid #ddd;
             margin-bottom: 0;">
            <div class="container" style="height: 460px;">
                <form action="loginmn" method="post" >
                    <div class="content hop1">
                        <div class="header">
                            <span class="text1" style="font-size: 20px">Login To My Shop</span>


                        </div>
                        <div class="body body-email">
                            <span class="text">Email</span>
                            <input type="text" name="email" class="input input__email" >
                        </div>
                        <div class="body body-mk">
                            <span class="text">Password</span>
                            <div class="pw">
                                <input type="password" name="password" id="passwordField1" class="input input__password" >
                                <button class="input__password-show" onclick="showpass(event)">
                                    Show
                                </button>
                            </div>

                            <div id="error-message" style="display: none; color: red;"></div>
                        </div>

                        <div class="click-login">
                            <button type="submit" class=" click-login__login" style="width: 318px; margin-top: 15px;">Đăng nhập</button>

                        </div>

                    </div>
                </form>

                <div class="img" style="background-image: url(https://media.boohoo.com/i/boohooamplience/375x88_BANNER_NEWIN_2);"></div>
            </div>
        </div>
        <footer>

            <div class="footerset">
                <strong>CLASS ACTION SETTLEMENT; CHECK YOUR EMAIL FOR $10 GIFT CARDS PLUS COMPLIMENTARY SHIPPING ON ANY
                    PURCHASE. CLICK HERE FOR ADDITIONAL INFORMATION:</strong><br>
                <a href="https://www.boohoocapricingsettlement.com/" target="_blank">
                    <p>WWW.BOOHOOCAPRICINGSETTLEMENT.COM</p>
                </a>
            </div>
            <div class="b-footer_top">
                <img src="./accest/img/usa_payment_fooer_strip_mob_nozip-2111.svg" alt="">
            </div>
            <div class="footercontent">
                <div class="linkk">
                    <strong>QUICK LINKS</strong>
                    <ul>
                        <li>
                            <a href="#">Track My Order</a>
                            <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                        </li>
                        <li>
                            <a href="#">Help</a>
                            <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                        </li>
                        <li>
                            <a href="#">Returns</a>
                            <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                        </li>
                        <li>
                            <a href="#">Shipping Infor</a>
                            <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                        </li>
                    </ul>
                </div>


                <div class="sub">
                    <div class="sub1">
                        <strong>ABOUT US & MORE</strong>
                        <a href="#">About boohoo</a>
                        <a href="#">Size Guide</a>
                        <a href="#">Get Exclusive Offers & Updates</a>
                        <a href="#">Student Discount</a>
                        <a href="#">Become an Affiliate</a>
                    </div>
                    <div class="sub1">
                        <strong>INFORMATION</strong>
                        <a href="#">Sustainability</a>
                        <a href="#">Investor Relations</a>
                        <a href="#">Boohoo Social Responsibility</a>
                        <a href="#">Klarna</a>
                        <a href="#">Careers</a>
                        <a href="#">T&Cs</a>
                        <a href="#">PayPal</a>
                        <a href="#">Afterpay</a>
                        <a href="#">Privacy Notice - Updated January 2023</a>
                        <a href="#">About Cookies</a>

                        <a href="#">Sitemap</a>

                    </div>

                </div>
                <div class="infor">
                    <div class="subscribe">
                        <p>SUBSCRIBE! GET AN EXTRA 10% OFF & INSIDE INFO!*</p>
                        <form onsubmit="return checkEmail()">
                            <input type="email" id="email" name="email" placeholder="Enter your email">
                            <div id="emailError" class="error"></div>
                            <button type="submit">SUBSCRIBE</button>
                        </form>
                        <p>*Extra 10% discount sent via email to new subscribers only. By subscribing, you agree to receive
                            marketing communications from boohoo by email. You can unsubscribe at any point.</p>
                    </div>
                    <div class="footer-app">
                        <h1>Download The Boohoo App</h1>
                        <p>Hear about exclusive offers, get early access to collabs & quicker checkout</p>
                        <div class="get-app">
                            <div class="scan">
                                <p>SCAN TO DOWNLOAD</p>
                                <div class="qr">
                                    <img src="./accest/img/BH_app_QR.jpg" alt="">
                                </div>
                            </div>
                            <div class="icon-app">
                                <div class="chplay"><img src="./accest/img/GOOGLE_ENG.png" alt=""></div>
                                <div class="appstore"><img src="./accest/img/APPLE_ENG.png" alt=""></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="country">
                    <strong>COUNTRY</strong>
                    <select name="country" id="countr">
                        <option value="USA"> USA $</option>
                        <option value="Canada">CAN $</option>
                        <option value="Vietnam">VIE đ</option>

                    </select>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="footer-copy">
                    <div class="copy">
                        <p>COPYRIGHT © 2023 BOOHOO</p>
                    </div>
                    <ul class="nav-policy">
                        <li class="access"><a href="#">Accessibility</a></li>
                        <li class="terms"><a href="#">Terms & Conditions</a></li>
                        <li class="privacy-policy"><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </footer>
        <script>
            function showpass(event) {
                event.preventDefault();
                var passwordField = document.getElementById("passwordField1");

                if (passwordField.type === "password") {
                    passwordField.type = "text";
                } else {
                    passwordField.type = "password";
                }
            }
        </script>

        <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
        <!--        <script>
                                                                    console.log("Xoá");
                                                                    $(".dangnhap").click(function (event) {
                                                                        event.preventDefault();
        
                                                                        if (confirm("Bạn đã nhập sai mật khẩu! Vui lòng thử lại.")) {
        //				var link = $(this).attr('href');
        //				window.location = link;
                                                                            var currentURL = window.location.href;
                                                                            window.location.href = currentURL;
                                                                        } else {
                                                                            console.log("Huỷ");
                                                                        }
                                                                    });
                </script>-->

        <script src="./accest/js/main.js"></script>
        <script src="cart1.js"></script>
    </body>
</html>