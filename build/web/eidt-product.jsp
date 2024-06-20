<%@page import="dal.ProductDAO"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style-editproduct.css">
        <link rel="icon" href="./accest/img/logoboohoo.png">
	<title>Edit Product</title>
</head>
<body>
	<h1>Edit Product</h1>
    
    <%	
    	String id = request.getParameter("id");
    
    	Product product = ProductDAO.getProductById(Integer.parseInt(id));
        
    %>
    <form action="EditProduct" method="post" enctype="multipart/form-data">
    
    	<label for="name">ID:</label>
        <input type="text" id="id" name="id" value="<%=product.getId()%>" readonly><br><br>
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%=product.getName()%>"><br><br>
        
        <label for="price">Price:</label>
        <input type="number" step="0.01" id="price" name="price" value="<%=product.getPrice()%>"><br><br>
        
        <label for="image">Image:</label>
        <img src="img/<%=product.getImage() %>" width="90" height="80" />
        <input type="file" id="image" name="image" value="<%=product.getImage()%>"><br><br>
               
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" value="<%=product.getDescription()%>"><br><br>
        
        <label for="color">Color:</label>
        <input type="text" id="color" name="color" value="<%=product.getColor()%>"><br><br>
		
	<label for="size">Size:</label>
        <input type="text" id="size" name="size" value="<%=product.getSize()%>"><br><br>
        
        <label for="image2">Image2:</label>
        <img src="img/<%=product.getImage2() %>" width="90" height="80" />
        <input type="file" id="image2" name="image2" value="<%=product.getImage2()%>"><br><br>
        
        <label for="cateid">CID:</label>
        <input type="text" id="cateid" name="cateid" value="<%=product.getCateid()%>"><br><br>
        
        <button type="submit">Update Product</button>
    </form>
</body>
</html>