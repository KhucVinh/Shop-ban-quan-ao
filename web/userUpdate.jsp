
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style-edituser.css">
    <link rel="icon" href="images/logoboohoo.png">
	<title>Update User</title>
</head>
<body>
	<h1>Update User</h1>
         
    <form action="updatemn" method="post" >
    
    	<label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" value="${um.phone}" readonly><br><br>
        
        <label for="email">Email:</label>
        <input type="text" id="email" name="email" value="${um.email}" readonly><br><br>
        
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="${um.password}" readonly><br><br>
        
        <label for="cfpassword">Cfpassword:</label>
        <input type="text" id="cfpassword" name="cfpassword" value="${um.cfpassword}" readonly><br><br>
         
        <label for="fname">Fname:</label>
        <input type="text" id="fname" name="fname" value="${um.fname}"><br><br>
        
        <label for="lname">Lname:</label>
        <input type="text" id="lname" name="lname" value="${um.lname}"><br><br>
        
        <label for="mid">Mid:</label>
        <input type="text" id="mid" name="mid" value="${um.mid}"><br><br>
        

        <button type="submit">Update</button>
    </form>
</body>
</html>