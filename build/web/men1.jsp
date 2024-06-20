<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Don's Miss Out</title>

        <link rel="icon" href="./accest/img/logoboohoo.png">
        <link rel="stylesheet" href="./accest/css/style-header-men.css">
        <script src="https://kit.fontawesome.com/9d9613e72c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="./accest/css/style_men.css">
    </head>

    <body>
        <header>
            <div class="row">
                <div class="adv">
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
                                        <!-- <div class="headmenu-list">
                                            <button class="menunav-list1">
                                                <span class="material-symbols-outlined">
                                                    arrow_back_ios_new
                                                </span>
                                                <p>NEW IN</p>
                                            </button>
                                            <div class="menunav-list"><a href="#"> VIEW ALL</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN CLOTHING</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN DRESSES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN SHOES</a></div>
                                            <div class="menunav-list"><a href="#">NEW IN ACCESSORIES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN BEAUTY</a></div>
                                            <div class="menunav-list"><a href="#"> JUST LANDED</a></div>
    
                                            <div class="menunav-list1">
                                                <p> NEW IN BY FIGURE</p>
                                            </div>
                                            <div class="menunav-list"><a href="#"> NEW IN BY FIGURE</a></div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN PLUS & CURVE</div>
                                            <div class="menunav-list"><a href="#"></a> NEW IN PETITE</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN TALL</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN MATERNITY</div>
                                        </div> -->

                                    </div>
                                    <div class="menubar-list"><a href="#">ALL CLOTHING</a>
                                        <!-- <div id="headmenu-list" class="headmenu-list">
                                            <button id="menunav-list1" class="menunav-list1">
                                                <span class="material-symbols-outlined">
                                                    arrow_back_ios_new
                                                </span>
                                                <p>ALL clothong</p>
                                            </button>
                                            <div class="menunav-list"><a href="#"> VIEW ALL</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN CLOTHING</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN DRESSES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN SHOES</a></div>
                                            <div class="menunav-list"><a href="#">NEW IN ACCESSORIES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN BEAUTY</a></div>
                                            <div class="menunav-list"><a href="#"> JUST LANDED</a></div>
    
                                            <div class="menunav-list1">
                                                <p> NEW IN BY FIGURE</p>
                                            </div>
    
    
    
    
    
                                            <div class="menunav-list"><a href="#"> NEW IN BY FIGURE</a></div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN PLUS & CURVE</div>
                                            <div class="menunav-list"><a href="#"></a> NEW IN PETITE</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN TALL</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN MATERNITY</div>
                                            <div class="emty-element"></div>
                                        </div> -->

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
                            <li class="list2">
                                <div>
                                    <p><a href="women">WOMENS</a> </p>
                                </div>
                            </li>
                            <li class="list1">
                                <div>
                                    <p><a href="men">MENS</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="search1">
                        <input type="search" placeholder="What are you looking for?">
                        <button> <a href="#"><span class="material-symbols-outlined">
                                    search
                                </span></a></button>

                    </div>
                    <div class="user">
                        <li> <a id="login-singup" class="fa-regular fa-user" href="#"></a>
                            <c:if test = "${fname.fname == null}">
                                <div id="containerlogin" class="containerlogin">


                                    <div class="container-log">

                                        <form action="login" method="post">
                                            <div class="content hop1">
                                                <div class="header">
                                                    <span class="text1">LOGIN</span>
                                                    <a href="women"><button id="delete" onclick="slideOut2()">
                                                            <div class="delete">X</div>
                                                        </button>
                                                    </a>
                                                </div>
                                                <div class="body body-email">
                                                    <span class="text">Email</span>

                                                    <input type="text" name="email" class="input input__email" >
                                                </div>
                                                <div class="body body-mk">
                                                    <span class="text">Password</span>
                                                    <div class="pw">
                                                        <input type="password" name="password" id="passwordField" class="input input__password">
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

                                        <button class=" click-login__login"><a href="dangki.jsp">REGISTER</a></button>
                                    </div>
                                    <div class="img-log"
                                         style="background-image: url(https://media.boohoo.com/i/boohooamplience/375x88_BANNER_NEWIN_2);">
                                    </div>
                                </div>
                        </div></c:if>
                        </li>
                    <c:if test="${fname.fname != null}">        
                        <li style=" border-right:1px solid #ddd; margin-top: 0px; margin-left: -5px; padding-right: 20px">

                            <a style="font-size:1.5rem" href="change"> 

                                ${fname.fname}


                            </a>

                        </li>  </c:if>
                        <li> <a href="#"><span class="material-symbols-outlined">
                                    favorite
                                </span></a></li>
                        <li style=" margin-top:4px"> <a href="#" id="viewcart"><span class="material-symbols-outlined">
                                    shopping_bag
                                </span></a>
                           <c:if test="${fname.fname != null}">
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
                            </c:if>
                            <script>
                                document.getElementById('viewcart').addEventListener('click', function (event) {
                                    event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

                                    // Kiểm tra nếu fname.fname là null
                                    if (${fname.fname == null}) {
                                        alert("Vui lòng đăng nhập để xem giỏ hàng.");
                                    }
                                });
                            </script>
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
                    <li class="menu-bar1"><a href="categorymen?cid=${c.cid}" class="menu-bar11">${c.cname}</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> NEW IN</p>
                                <ul>
                                    <li><a href="categorymen?cid=${c.cid}">${c.cname}</a></li>
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
    <br><br><br><br><br><br><br><br>


    <section>
        <table id="table1">
            <tr>
                <td>
                    <div class="col1">
                        <br>
                        <p style="font-size:large;"><B>DON'T MISS OUT</B></p>
                    </div>
                    <div class="col2">
                        <!-- <a href="#">ENERY-SAVING MODE</a><br><br>
                        <a href="#">WHAT'S THIS?</a> -->
                    </div>
                </td>
            </tr>
        </table>

        <div class="main">
            <aside class="slidebar">
                <div>
                    <div class="slidebar-refine">REFINE BY</div>
                    <div class="slidebar-option" data-option="0">
                        <div>
                            <span>US SIZE </span>
                            <div class="container-fillter">
                                <ul class="product-fillter">
                                    <li>7</li>
                                    <li>8</li>
                                    <li>9</li>
                                    <li>10</li>
                                    <li>11</li>
                                    <li>12</li>
                                    <li>13</li>
                                    <li>28</li>
                                    <li>30</li>
                                    <li>32</li>
                                    <li>34</li>
                                    <li>36</li>
                                    <li>38</li>
                                    <li>40</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>COLOR</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li>Gray</li>
                                        <li>Khaki</li>
                                        <li>Metallics</li>
                                        <li>Multi</li>
                                        <li>Navy</li>
                                        <li>Neon</li>
                                        <li>Nude</li>
                                        <li>Orange</li>
                                        <li>Pink</li>
                                        <li>Purple</li>
                                        <li>Red</li>
                                        <li>Silver</li>
                                        <li>White</li>
                                        <li>Yellow</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>SHOP BY FIT</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li class="flex-12">Boohoo Plus & Curve Clothing</li>
                                        <li class="flex-12">Boohoo Tall</li>
                                        <li class="flex-12">Main Collection</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>CATEGORY</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li>Accessories</li>
                                        <li>Coats & jackets</li>
                                        <li>Denim</li>
                                        <li>Gifts & Novelty</li>
                                        <li>Grooming</li>
                                        <li>Jeans</li>
                                        <li>Jewelry & Watches</li>
                                        <li>Loungewear</li>
                                        <li>Watching Sets</li>
                                        <li>Pants</li>
                                        <li>Shoes and Boots</li>
                                        <li>Shorts</li>
                                        <li>Suits</li>
                                        <li>Sweater & Cardigans</li>
                                        <li>Swimweat</li>
                                        <li>Tops</li>
                                        <li>Tracksuits</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>STYLE</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li class="flex-12">2-in-1 Shorts</li>
                                        <li class="flex-12">Aviator Jackets</li>
                                        <li class="flex-12">Aviator Sungglasses</li>
                                        <li class="flex-12">Bags & Rucksacks</li>
                                        <li class="flex-12">Basic Shorts</li>
                                        <li class="flex-12">Basic Sweatpants</li>
                                        <li class="flex-12">Basic Sweatershirts</li>
                                        <li class="flex-12">Basic T-shirts</li>
                                        <li class="flex-12">Basic vests</li>
                                        <li class="flex-12">Beanies</li>
                                        <li class="flex-12">Belts</li>
                                        <li class="flex-12">Biker Jeans</li>
                                        <li class="flex-12">Blazers</li>
                                        <li class="flex-12">Bomber Jackets</li>
                                        <li class="flex-12">Bomber Tracksuits</li>
                                        <li class="flex-12">Boots</li>
                                        <li class="flex-12">Borgs Jackets</li>
                                        <li class="flex-12">Boxers</li>
                                        <li class="flex-12">Bracelets</li>
                                        <li class="flex-12">Briefs & Thongs</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>OCCASION</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li>Activewear</li>
                                        <li>Beachwear</li>
                                        <li>Casual</li>
                                        <li>Going out</li>
                                        <li>Lougnewear</li>
                                        <li>Novelty</li>
                                        <li>Occasion</li>
                                        <li>Smart</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>PRICE</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li class="flex-12">$0 - $10</li>
                                        <li class="flex-12">$10 - $20</li>
                                        <li class="flex-12">$20 - $30</li>
                                        <li class="flex-12">$30 - $50</li>
                                        <li class="flex-12">$50 - $100</li>
                                        <li class="flex-12">$100 - $500</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="slidebar-option">
                        <div>
                            <span>BRANDS</span>
                            <div>
                                <div class="container-fillter">
                                    <ul class="product-fillter">
                                        <li class="flex-12">boohooMan</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>
            <div class="container gird-4">
                <div class="container-nav">
                    <div style="display: flex;">
                        <div class="option-display active">4</div>
                        <div class="option-display">3</div>
                    </div>
                    <div class="option-sort">Sort</div>
                </div>
                <c:forEach items="${requestScope.pr}" var="o">
                    <div class="product">
                        <div class="product-image">
                            <a href="productmen?id=${o.id}"><img src="img/${o.image}" style="max-width: 100%;"></img></a>
                            <a href="productmen?id=${o.id}">
                                <div class="quick-view">
                                    Quick view
                                </div>
                            </a>
                            <div class="icon-heart">
                                <img src="./img//icon-heart.png" alt="save for later" title="save for later"
                                     style="max-width: 100%;">
                            </div>

                        </div>
                        <div class="product-description">
                            <a href="productmen?id=${o.id}">
                                <div class="product-name">
                                    ${o.name}
                                </div>
                            </a>
                            <div class="product-price">
                                <div class="price">
                                    <span class="price-after-reduce">$${o.price}</span>
                                    <span class="price-before-reduce">$50.00</span>
                                </div>

                            </div>
                            <div class="product-color">
                                <div class="block-color" style="background: ${o.color};"></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                <div class="load-more">
                    <div style="display: flex;align-items: center;flex-direction: column;flex-basis: 25%;">
                        <p class="text-show">Showing <span>16</span> of <span>16</span> products</p>
                        <a style="width: 100%;"><button class="btn-load-more">Load more</button></a>
                    </div>
                </div>
            </div>
        </div>

        <table id="table2">
            <td>
                <p style="font-size: 18px;">DON'T MISS OUT</p>
            </td>
        </table>
    </section>




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
                    var passwordField = document.getElementById("passwordField");

                    if (passwordField.type === "password") {
                      passwordField.type = "text";
                    } else {
                      passwordField.type = "password";
                    }
                  }
	</script>
    <script src="./accest/js/main1.js"></script>
    <script src="./accest/js/main.js"></script>
    <script src="cart1.js"></script>
</body>

</html>>