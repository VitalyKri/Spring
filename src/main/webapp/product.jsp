<%@ page import= "java.util.List"%>
<%@ page import= "ru.gb.model.Product"%>
<%@ page contentType= "text/html; charset=windows-1251" language="java"%>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animal</title>
</head>

<body>
    <h2>Product</h2>
    <hr>
    <% List<Product> listProduct = (List<Product>) request.getAttribute("listProduct"); %>
    <% if (listProduct != null) { %>
        <table>
        <tr>
            <td>id</td>
            <td>title</td>
            <td>cost</td>
        </tr>
        <% for (Product value : listProduct) { %>
                    <tr>
                        <td><%= value.getId()%></td>
                        <td><%=value.getTitle()%></td>
                        <td><%=value.getCost()%></td>
                    </tr>
        <% } %>
    <% } %>
    </table>
    <hr>
</body>

</html>