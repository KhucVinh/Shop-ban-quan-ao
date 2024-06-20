<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Orders</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <style>
            .choose1{
                display: flex;
                align-items: center;
                margin-right: 40px;
                font-size: 14px;
            }
            .check_box{
                width: 10px;
                height: 10px;
                /*            background-color: rgba(75, 192, 192,1);*/
                border: 2px solid rgba(75, 192, 192, 0.5);
                margin-right: 10px;
                margin-bottom: 2px;

            }
            .total-data{
                border: 1px solid #ddd;
                display: inline-block;
                padding: 10px 16px 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                min-width: 214px;
                margin-left: 16px;
            }
            .show{
                box-shadow: inset 0 4px 0 0 rgba(75, 192, 192, 1), 0px 1px 7px 0px rgba(74, 74, 78, .16);
            }
            .text{
                color: #666;
                font-weight: 500;
                font-size: 14px;
                line-height: 16px;
            }
            .data{
                font-size: 28px;
                /* font-family: Roboto-Medium; */
                color: rgba(0,0,0,.87);
                margin: 8px 0;
                font-weight: 600;
            }
            .text2{
                color: #999;
                font-size: 12px;
                line-height: 20px;
            }
        </style>
    </head>
    <body style="background-color: #f8f8f8; max-width: 100vw;">
        <%@ include file="headerAdmin.jsp" %>


        <div id="6month" style="display: block">
            <div style="
                 margin: 110px; background-color: white;margin-top: 60px;
                 margin-bottom: 0px;
                 padding-bottom: 25px;
                 padding-top: 20px;
                 box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="display: flex;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px; margin-left: 133px;"> Dữ liệu tổng quát </h1>
                    <div style="display: flex;
                         justify-content: center;  margin-left: 688px;  ">
                        <!--                <a href="#">-->
                        <div class="choose1" id="chooses1month">
                            <div class="check_box"></div>
                            <div>1 Tháng qua </div>
                        </div>
                        <!--                </a>-->
                        <!--                <a href="#">-->
                        <div class="choose1">
                            <div class="check_box" style="background-color: rgba(75, 192, 192, 1)"></div>
                            <div >Tổng</div>

                        </div>
                        <!--                </a>-->
                    </div>
                </div>
                <div style=" width: 1037px; height: 0; border-top: 1px solid #ddd; margin-left: 131px; margin-bottom: 20px"></div>
                <div style="margin-left: 114px">
                    <c:set var="totalRevenue" value="${requestScope.total}" />
                    <div class="total-data show" id="doanhthu">
                        <div class="text">Doanh thu($)</div>
                        <div class="data">$${totalRevenue}</div>
                        <div class="text2">Tổng doanh thu</div>
                    </div>
                    <c:set var="c" value="${requestScope.cou}" />
                    <div class="total-data" id="donhang">
                        <div class="text">Đơn hàng</div>
                        <div class="data"> <div>${c}</div></div>
                        <div class="text2">Tổng số đơn hàng</div>

                    </div>




                </div>
            </div>
            <!--         Vẽ biểu đồ-->
            <div id="show-doanhthu" style="display: flex; margin: 110px; background-color: white;justify-content: space-evenly;margin-top: 40px;    box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="     width: 1100px;
                     height: 660px;

                     display: flex;
                     align-items: center;
                     flex-direction: column;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px;margin-left: -940px;margin-top: 30px"> Doanh thu </h1>
                    <canvas id="chart" ></canvas>
                </div>
            </div>
            <!--         Vẽ biểu đồ-->
            <div id="show-chartcount" style="display: none; margin: 110px; background-color: white;justify-content: space-evenly;margin-top: 40px;    box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="     width: 1100px;
                     height: 660px;

                     display: flex;
                     align-items: center;
                     flex-direction: column;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px;margin-left: -838px;margin-top: 30px"> Xu hướng đơn hàng </h1>
                    <canvas id="chart-count" ></canvas>
                </div>
            </div>
        </div>
        <div id="1month" style="display: none">
            <div style="
                 margin: 110px; background-color: white;margin-top: 60px;
                 margin-bottom: 0px;
                 padding-bottom: 25px;
                 padding-top: 20px;
                 box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="display: flex;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px; margin-left: 133px;"> Dữ liệu tổng quát </h1>
                    <div style="display: flex;
                         justify-content: center;  margin-left: 688px;  ">
                        <!--                <a href="#">-->
                        <div class="choose1">
                            <div class="check_box" style="background-color: rgba(75, 192, 192, 1)"></div>
                            <div>1 Tháng qua </div>
                        </div>
                        <!--                </a>-->
                        <!--                <a href="#">-->
                        <div class="choose1" id="choose6month">
                            <div class="check_box" ></div>
                            <div >Tổng</div>

                        </div>
                        <!--                </a>-->
                    </div>
                </div>
                <div style=" width: 1037px; height: 0; border-top: 1px solid #ddd; margin-left: 131px; margin-bottom: 20px"></div>
                <div style="margin-left: 114px">
                    <c:set var="t1m" value="${requestScope.total1m}" />
                    <div class="total-data show" id="doanhthu-1month">
                        <div class="text">Doanh thu($)</div>
                        <div class="data">$${t1m}</div>
                        <div class="text2">Tổng doanh thu</div>
                    </div>
                    <c:set var="c1m" value="${requestScope.cou1m}" />
                    <div class="total-data" id="donhang-1month">
                        <div class="text">Đơn hàng</div>
                        <div class="data"> <div>${c1m}</div></div>
                        <div class="text2">Tổng số đơn hàng</div>

                    </div>




                </div>
            </div>
            <!--         Vẽ biểu đồ-->
            <div id="show-doanhthu1month" style="display: flex; margin: 110px; background-color: white;justify-content: space-evenly;margin-top: 40px;    box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="     width: 1100px;
                     height: 660px;

                     display: flex;
                     align-items: center;
                     flex-direction: column;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px;margin-left: -940px;margin-top: 30px"> Doanh thu </h1>
                    <canvas id="chart-1month" ></canvas>
                </div>
            </div>
            <!--         Vẽ biểu đồ-->
            <div id="show-chartcount1month" style="display: none; margin: 110px; background-color: white;justify-content: space-evenly;margin-top: 40px;    box-shadow: 0px 1px 10px 0px rgba(74,74,78,.16);">

                <div style="     width: 1100px;
                     height: 660px;

                     display: flex;
                     align-items: center;
                     flex-direction: column;">
                    <h1 style="display: flex;justify-content: center; font-size: 18px;margin-left: -838px;margin-top: 30px"> Xu hướng đơn hàng </h1>
                    <canvas id="chart-count-1month" ></canvas>
                </div>
            </div>
        </div>
        <script>
            var doanhThuElement = document.getElementById('doanhthu');
            var donHangElement = document.getElementById('donhang');
            var showDoanhThuElement = document.getElementById('show-doanhthu');
            var showChartCountElement = document.getElementById('show-chartcount');

            doanhThuElement.addEventListener('click', function () {
                doanhThuElement.classList.add('show');
                donHangElement.classList.remove('show');
                showDoanhThuElement.style.display = 'flex';
                showChartCountElement.style.display = 'none';
            });


            donHangElement.addEventListener('click', function () {
                donHangElement.classList.add('show');
                doanhThuElement.classList.remove('show');
                showChartCountElement.style.display = 'flex';
                showDoanhThuElement.style.display = 'none';
            });

            //        1 month
            var doanhThu1Month = document.getElementById('doanhthu-1month');
            var donHang1Month = document.getElementById('donhang-1month');
            var showDoanhThu1Month = document.getElementById('show-doanhthu1month');
            var showChartCount1Month = document.getElementById('show-chartcount1month');

            doanhThu1Month.addEventListener('click', function () {
                doanhThu1Month.classList.add('show');
                donHang1Month.classList.remove('show');
                showDoanhThu1Month.style.display = 'flex';
                showChartCount1Month.style.display = 'none';
            });


            donHang1Month.addEventListener('click', function () {
                donHang1Month.classList.add('show');
                doanhThu1Month.classList.remove('show');
                showChartCount1Month.style.display = 'flex';
                showDoanhThu1Month.style.display = 'none';
            });
      //chọn 1 hoặc tất cả
             document.getElementById("chooses1month").addEventListener("click", function () {
                document.getElementById("1month").style.display = "block";
                document.getElementById("6month").style.display = "none";
            });

            document.getElementById("choose6month").addEventListener("click", function () {
                document.getElementById("1month").style.display = "none";
                document.getElementById("6month").style.display = "block";
            });
        </script>
        <script>
            var orderDates = [];
            var totalAmounts = [];

            <c:forEach var="order" items="${orders}">
            orderDates.push('${order.orderDate}');
            totalAmounts.push('${order.totalAmount}');
            </c:forEach>

            var ctx = document.getElementById('chart').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: orderDates,
                    datasets: [{
                            label: 'Doanh thu',
                            data: totalAmounts,
                            backgroundColor: 'rgba(75, 192, 192, 1)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 2
                        }]
                },

                options: {
                    scales: {
                        y: {
                            beginAtZero: true

                        }
                    }
                }
            });
        </script>
        <script>
            var orderDates2 = [];
            var orderCounts = [];

            <c:forEach var="cid" items="${coid}">
            orderDates2.push('${cid.orderDate}');
            orderCounts.push(parseInt('${cid.orderCount}'));
            </c:forEach>

            var ctx2 = document.getElementById('chart-count').getContext('2d');
            var chart2 = new Chart(ctx2, {
                type: 'line',
                data: {
                    labels: orderDates2,
                    datasets: [{
                            label: 'Đơn hàng',
                            data: orderCounts,
                            backgroundColor: 'rgba(75, 192, 192, 1)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 2
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            stepSize: 1,
                            ticks: {
                                precision: 0
                            }
                        }
                    }
                }
            });
        </script>
        <script>
            var orderDates1m = [];
            var totalAmounts1m = [];

            <c:forEach var="or1m" items="${order1m}">
            orderDates1m.push('${or1m.orderDate}');
            totalAmounts1m.push('${or1m.totalAmount}');
            </c:forEach>

            var ctx = document.getElementById('chart-1month').getContext('2d');
            var chart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: orderDates1m,
                    datasets: [{
                            label: 'Doanh thu 1 tháng qua',
                            data: totalAmounts1m,
                            backgroundColor: 'rgba(75, 192, 192, 1)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 2
                        }]
                },

                options: {
                    scales: {
                        y: {
                            beginAtZero: true

                        }
                    }
                }
            });
        </script>
        <script>
            var orderDates21m = [];
            var orderCounts1m = [];

            <c:forEach var="cid1m" items="${coid1m}">
             orderDates21m.push('${cid1m.orderDate}');
             orderCounts1m.push(parseInt('${cid1m.orderCount}'));
            </c:forEach>

            var ctx2 = document.getElementById('chart-count-1month').getContext('2d');
            var chart2 = new Chart(ctx2, {
                type: 'line',
                data: {
                    labels: orderDates21m,
                    datasets: [{
                            label: 'Đơn hàng 1 tháng qua',
                            data: orderCounts1m,
                            backgroundColor: 'rgba(75, 192, 192, 1)',
                            borderColor: 'rgba(75, 192, 192, 1)',
                            borderWidth: 2
                        }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true,
                            stepSize: 1,
                            ticks: {
                                precision: 0
                            }
                        }
                    }
                }
            });
        </script>
        <script>
           
        </script>


    </body>
</html>
