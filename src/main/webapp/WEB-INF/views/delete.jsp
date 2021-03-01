<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Delete Book</title>
</head>
<body>
<form:form method="post" modelAttribute="book" action="/books/delete/${id}">
    <td>Czy na pewno chcesz usunąć książkę?</td><br/>
    <form:hidden path="id"/><br/>
    <a href="<c:url value="/books/all"/>">Anuluj</a>

    <input type="submit" value="Potwierdzam">
</form:form>

</body>
</html>