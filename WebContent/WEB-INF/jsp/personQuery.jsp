<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Person Query</title>
</head>

<body>
<form method="post">
    Search for A Person by Last Name.
    <input type="text" name="lastName" value="${lastName}" />
    <input type="submit" value="Query" />
</form>


<table border="1">
    <tr>
        <th>Last Name</th>        
        <th>First Name</th>
    </tr>
    <c:forEach items="${persons}" var="person">
        <tr>
            <td>${person.lastName}</td>
            <td>${person.firstName}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
