<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html><% String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";%>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Submitted Student Information</h2>
<form:form action="<%= basePath%>updateProduct.html">
    <table>
        <tr>
            <td>Name</td>
            <td>${name}</td>
        </tr>
        <tr>
            <td>Type</td>
            <td>${type}</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>${description}</td>
        </tr>
        <tr>
            <td>Cdate</td>
            <td>${cdate}</td>
        </tr>
    </table>
</form:form>

</body>
</html>