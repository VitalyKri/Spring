<%@ page import= "java.util.List"%>
<%@ page import= "ru.gb.model.Cat"%>
<%@ page contentType= "text/html; charset=windows-1251" language="java"%>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Animal</title>
</head>

<body>
    <h2>Animal</h2>
    <p>name: ${cat.name}</p>
    <p>age: ${cat.age}</p>
    <hr>

    <ul>
    <% Cat cat = (Cat) request.getAttribute("cat"); %>
        <% if (cat.getChildrens() != null) %>
        <% for (Cat value: cat.getChildrens()) { %>

            <li> name : <%= value.getName()%>; age:  <%= value.getAge()%></li>
    <% } %>
    </ul>
    <hr>
</body>

</html>