<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style-addproduct.css">
	<title>Add Product</title>
</head>
<body>
	<h1>Add Product</h1>
	<form action="AddProduct" method="post" enctype="multipart/form-data">
		<label for="name">Name:</label>
		<input type="text" name="name"><br>
		<label for="price">Price:</label>
		<input type="number" name="price"><br>
		<label for="image">Image:</label>
		<input type="file" name="image"><br>
		<label for="description">Description:</label>
		<input type="text" name="description"><br>
		
		<label for="color">Color:</label>
		<input type="text" name="color"><br>
		<label for="size">Size:</label>
		<input type="text" name="size"><br>
		<label for="image2">Image2:</label>
		<input type="file" name="image2"><br>
		<label for="cateid">CID:</label>
		<input type="text" name="cateid"><br>
		<button type="submit">Add</button>
	</form>
</body>
</html>