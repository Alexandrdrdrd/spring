<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<body>

<h2>Dear employee, you are welcome!</h2>
<br>
<br>

Name ${employee.name}
<br><br>
Surname ${employee.surname}
<br>
<br>
Salary ${employee.salary}
<br>
<br>
Department ${employee.department}
<br>
<br>
Your car ${employee.carBrand}
<br>
<br>
Languages
<c:forEach var="lang" items="${employee.languages}">
    <ul>
        <li> ${lang} </li>
    </ul>
</c:forEach>
</body>
