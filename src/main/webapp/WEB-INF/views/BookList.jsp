<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book List</title>
</head>
<body>
<table>
    <thead>
    <th>Isbn</th>
    <th>Tytuł</th>
    <th>Autor</th>
    <th>Wydawca</th>
    <th>Gatunek</th>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><c:out value="${book.publisher}"/></td>
            <td><c:out value="${book.type}"/></td>
            <td>
                <a href="<c:url value="/books/edit/${book.id}"/>">Edytuj</a>
                <a href="<c:url value="/books/delete/${book.id}"/>">Usuń</a>
            </td>

        </tr>
    </c:forEach>
    </tbody>
</table>
<button><a href="/books/add">Dodaj nową książkę</a></button>
</body>
</html>