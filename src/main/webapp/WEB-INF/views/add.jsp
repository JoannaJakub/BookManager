<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"
           uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Book add</title>
</head>
<body>
Dodaj książke
<form:form method="post"
           modelAttribute="book">
    Isbn:
    <form:input path="isbn" id="isbn"/><br>
    Tytuł:
    <form:input path="title" id="title"/><br>
    Autor:
    <form:input path="author" id="author"/><br>
    Wydawca:
    <form:input path="publisher" id="publisher"/><br>
    Gatunek:
    <form:input path="type" id="type"/><br>
    <input type="submit" value="Save">
</form:form>

</body>
</html>
