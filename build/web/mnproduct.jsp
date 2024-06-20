<%@page import="dal.ProductDAO"%>
<%@page import="model.Product"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="style-index.css">
        <link rel="icon" href="./accest/img/logoboohoo.png">
	<title>Product Management</title>
        
</head>
<body style="background-color: #f8f8f8;  ">  
     <%@ include file="headerAdmin.jsp" %>
     
     <a href="add-product.jsp" class="button add-button" style=" margin-top: 15px; margin-bottom: 0;">Add</a>
	<table class="product-table">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Price</th>
				<th>Image</th>
				
				<th>Description</th>
				
				<th>Color</th>
				<th>Size</th>
				<th>Image2</th>
				<th>CID</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<% for(Product item : ProductDAO.getProducts()){
				%>
				
				<tr class="product-row">
					<td><%=item.getId() %></td>
					<td><%=item.getName() %></td>
					<td><%=item.getPrice() %></td>
					<td><img src="img/<%=item.getImage() %>" ></td>
					
					<td><%=item.getDescription() %></td>
					
					<td><%=item.getColor() %></td>
					<td><%=item.getSize() %></td>
					<td><img src="img/<%=item.getImage2() %>" ></td>
					<td><%=item.getCateid() %></td>
					<td>
						<a href="eidt-product.jsp?id=<%=item.getId() %>" class="button edit-button">Edit</a>
						<a href="DeleteProduct?id=<%=item.getId() %>" class="button delete-button">Delete</a>
					</td>
				</tr>
				
			<% } %>
		
		</tbody>
	</table>
	
	<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
	
	<script>
		console.log("Xoá");
		$(".delete-button").click(function(event){
			event.preventDefault();
			if(confirm("Bạn có chắc chắn muốn xoá hay không?")){
				var link = $(this).attr('href');
				window.location = link;
			}else{
				console.log("Huỷ");
			}
		});
                
	</script>
        
</body>
</html>