<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<body>

<h2>Pleas, enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <br>
    <br>
    Surname <form:input path="surname"/>
    <br>
    <br>
    Salary <form:input path="salary"/>
    <br>
    <br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Eng <form:checkbox path="languages" value="English"/>
    French <form:checkbox path="languages" value="French"/>
    Other <form:checkbox path="languages" value="Other"/>

    <input type="submit" value="Ok">

</form:form>


</body>
