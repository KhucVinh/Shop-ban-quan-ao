<%@page import="dal.UserDAOMN"%>
<%@page import="model.User"%>
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style-usermn.css">
        <title>User Management</title>
        <link rel="icon" href="images/logoboohoo.png">
        <style>
  thead th {
                background-color: #333;
                color: #fff;
                text-align: center;
                padding-top: 7px;
                padding-bottom: 8px;
            }
        </style>
    </head>
    <body style="background-color: #f8f8f8;">
        <%@ include file="headerAdmin.jsp" %>
        <!--    <h3 style="text-align: center; font-size:1.8rem "><a >Quản lý người dùng</a></h3>-->
        <table class="product-table">
            <thead>
                <tr>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Confirm Password</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>MID</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody >
                <c:forEach items="${users}" var="x">


                    <tr class="product-row">
                        <td >${x.phone}</td>
                        <td >${x.email}</td>
                        <td >${x.password}</td>
                        <td >${x.cfpassword}</td>
                        <td >${x.fname}</td>
                        <td >${x.lname}</td>
                        <td >${x.mid}</td>
                        <td >
                            <a href="updatemn?phone=${x.phone}" class="button edit-button">Update</a>
                            <a href="deletemn?phone=${x.phone}" class="button delete-button">Delete</a>
                        </td>
                    </tr>

                </c:forEach>

            </tbody>
        </table>

        <script src="https://code.jquery.com/jquery-2.2.4.js"></script>

        <script>
            console.log("Xoá");
            $(".delete-button").click(function (event) {
                event.preventDefault();
                if (confirm("Bạn có chắc chắn muốn xoá hay không?")) {
                    var link = $(this).attr('href');
                    window.location = link;
                } else {
                    console.log("Huỷ");
                }
            });
        </script>
    </body>
</html>