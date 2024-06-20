<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <style>
            body{
                font-family: "Lato","Helvetica Neue","Helvetica","Arial","Nimbus Sans L","Liberation Sans",sans-serif;
                margin-left: 0;
                margin-right: 0;
            }
            .black{
                background: white;
                text-align: right;
                height: 0;
                max-width: 100vw;
                margin-top: -10px;
            }
            .headerad{
                display: flex;
                height: 112px;
              
                background-color: white;
                border-bottom: 1px solid #ddd;
                  max-width: 100vw;
            }

            .logo-nav img{
                height: 60px;
                width: auto;
                margin-top: 18px;
                margin-left: 115px;
                padding-right: 30px;
            }
            .headerad .navi{
                display: flex;
                align-items: center;
            }
            .nav{
                display: flex;
                list-style: none;
                width: 65vw;
                justify-content: space-evenly;
            }
            .nav .list1{
                text-decoration: none;
                width: 100%;
            }
            .nav .list1 p{
/*                border-right: 2px solid #ddd;*/
                text-align: center;
            }
            .nav .list1 a{
                text-decoration: none;
                color: #303030;
                font-size: 20px;
            }
            .nav .list1 a:hover{
                font-size: 22px;
              
            }
            .nav .list1 p a.current {

                font-weight: 600;
                font-size: 22px;
            }
        </style>
    </head>
    <body>
        <div class="black"></div>
        <div class="headerad">
            <div class="logo-nav">
                <div class="logo">
                    <a href="women"><img src="./accest/img/boohoo_logo_black.png" alt="logo"></a>
                </div>
            </div>
            <div class="navi">
                <ul class="nav">
                    
                    <li class="list1">
                        <div>
                            <p><a href="loadus" class="<%= request.getRequestURI().endsWith("user.jsp") ? "current" : "" %>">Quản lí người dùng</a></p>
                        </div>
                    </li>
                    <li class="list1">
                        <div>
                            <p><a href="mnproduct.jsp" class="<%= request.getRequestURI().endsWith("mnproduct.jsp") ? "current" : "" %>">Quản lí sản phẩm</a></p>
                        </div>
                    </li>
                    
                    <li class="list1">
                        <div>
                            <p><a href="mnorder" class="<%= request.getRequestURI().endsWith("mnorder.jsp") ? "current" : "" %>">Quản lí đơn hàng</a></p>
                        </div>
                    </li>
                     <li class="list1">
                        <div>
                            <p style="border: none; margin-left: -40px;"><a href="thongke" class="<%= request.getRequestURI().endsWith("thongke.jsp") ? "current" : "" %>">Thống kê</a></p>
                        </div>
                    </li>
                   
                </ul>
            </div>
        </div>
    </body>
</html>
