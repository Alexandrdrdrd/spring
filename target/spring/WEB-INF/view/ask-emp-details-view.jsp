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
    <form:option value="Information Tecnology" label="IT"/>
    <form:option value="Human Resorces" label="HR"/>
    <form:option value="Sales" label="Sales"/>
    </form:select>
    <br><br>
    <input type="submit" value="Ok">
</form:form>


</body>
