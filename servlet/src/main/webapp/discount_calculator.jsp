<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Currency Converter</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Product Discount Calculator</h2>
<form action="/discount" method="post">
    <label>Product Description:</label><br>
    <input type="text" name="description" placeholder="Mô tả sản phẩm"><br>
    <label>List Price:</label><br>
    <input type="number" name="price" placeholder="Giá niêm yết của sản phẩm"><br>
    <label>Discount Percent:</label><br>
    <input type="number" name="percent" placeholder="Tỷ lệ chiết khấu (phần trăm)"><br>
    <input type="submit" id="submit" value="Result">

</form>
</body>
</html>