<%-- 
    Document   : men
    Created on : May 9, 2023, 10:39:02 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Users</title>

        <link rel="icon" href="img/logoboohoo.png">
        <link rel="stylesheet" href="css/style-header-men.css">
        <script src="https://kit.fontawesome.com/9d9613e72c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="styleusers.css"/>
        <style>

            .sidebar2 .item:nth-child(2) {
                background-color: white;

            }
            .container2 {
                display: flex;
                margin-left: 250px;
                margin-right: 250px;
                background: #F8F8F8;
                border-left: 1px solid #E8E8E8;
                border-right: 1px solid #E8E8E8;
                min-height: 500px;
            }
            .full-width {
                width: 100%;
                font-size: 17px;
                font-weight: 600;
                text-align: center;
                display: flex;
                background-color: #F8F8F8;
                justify-content: center;
                align-items: center;
            }
            .sidebar2 .item {
                font-size: 13px;
                padding: 18px;
                border-bottom: 1px solid #E8E8E8;
            }
            .password-input input[type="password"] {
                flex: 1;
                /* margin-right: 10px; */
                /* padding: 5px; */
                margin: 0;
                border: none;
                outline: none;
                height: 100%;
            }
            .columns1 label {
                display: block;
                margin-bottom: 5px;
                font-size: 13px;
                margin-top: 15px;
            }
            .columns1 input, .columns1 select {
                font-size: 14px;
                width: 100%;
                padding: 12px;
                margin: 0;
                border-radius: 3px;
                border: 1px solid #ccc;
            }


            .child {
                margin-top: 20px;
                width: 100%;
                border: 1px solid #E8E8E8;
                display: flex;
                background: white;
                padding: 10px;
            }

            .child1 {
                width: 60%;
            }

            .child2 {
                display: flex;
                flex-direction: column;
                align-items: flex-end;
                justify-content: space-between;
                margin-top: 10px;
                width: 40%;

            }

            .child2 p {
                margin: 0;
                text-align: right;
            }
            #text2{

                color: orange;
            }
            #text4{
                margin-top: auto;

            }
        </style>
    </head>

    <body style="background-color: #F8F8F8">
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
                                </div></c:if>
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
    <hr style="border: 1px solid #ddd;">
    <br><br><br><br><br><br>

    <table id="table12">
        <tr>
            <td>
                <div style="font-size: 18px;
                     font-weight: 600;
                     height: 78px;
                     width: 100px;
                     border-bottom: 1px solid;
                     margin-left: 265px;
                     position: relative;
                     padding-top: 36px;
                     padding-left: 5px;
                     ">ACCOUNT</div>
            </td>
        </tr>
    </table>
    <div class="container2">
        <div class="sidebar2">
            <a href="#" class="item" style="height: 50px"></a>
            <a href="oderhistory?phone=${fname.phone}" class="item">ORDER HISTORY</a>
            <a href="change?phone=${fname.phone}" class="item">ACCOUNT DETAILS</a>
            <a href="changepass?phone=${fname.phone}"  class="item">CHANGE PASSWORD</a>
            <a href="loginmanager.jsp" class="item">MY SHOP</a>
        </div>
        <div class="content2">
            <div class="full-width" style="border-bottom: 1px solid #E8E8E8;">ORDER HISTORY</div>
            <form action="oderhistory">
                <c:forEach items="${requestScope.paymentList}" var="d">
                    <input type="text" name="phone" value="${d.phone}" style="display: none;">
                    <div class="child">
                        <div class="child1">
                            <p id="text1" >${d.products}</p>
                            <p id="text4"><span style="font-weight: 600;">Total:</span>${d.total}</p>
                        </div>
                        <div class="child2">
                            <p id="text2"><span style="color: black;font-weight: 600;">Status:</span> ${d.status}</p>
                            <p id="text3"><span style="font-weight: 600;">Time:</span> ${d.date}</p>
                        </div>
                    </div>
                </c:forEach>
            </form>
        </div>

    </div>
    <footer>
        <div class="b-footer_top" style="padding:77px">
            <img src="img/usa_payment_fooer_strip_mob_nozip-2111.svg" alt="">
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
                                <img src="img/BH_app_QR.jpg" alt="">
                            </div>
                        </div>
                        <div class="icon-app">
                            <div class="chplay"><img src="img/GOOGLE_ENG.png" alt=""></div>
                            <div class="appstore"><img src="img/APPLE_ENG.png" alt=""></div>
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
        var text1Elements = document.querySelectorAll("#text1");

        text1Elements.forEach(function (element) {
            var inputString = element.innerHTML;
            var outputString = inputString.replace(/\[/g, "").replace(/\]/g, "").replace(/, /g, "<br>");
            element.innerHTML = outputString;
        });
    </script>
    <script src="main.js"></script>
    <script src="./accest/js/main.js"></script>
    <script src="cart1.js"></script>



</body>

</html>
