<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<h2>Dear guest, please enter your name in a form below</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute = "employee" >

    Name: <form:input path="name"/>
    <br><br>
    Surname: <form:input path="surname"/>
    <br><br>
    Salary: <form:input path="salary"/>
    <br><br>
    Department: <form:select path="department">
    <form:option value="Information Technologies" label="IT"/>
    <form:option value="Human Resources" label="HR"/>
    <form:option value="Sales" label="Sales"/>
    </form:select>
    <br><br>
    Choose a loyalty program:
    Seagull Way <form:radiobutton path="loyaltyProgram" value="Seagull Way"/>
    Lunar Industries <form:radiobutton path="loyaltyProgram" value="Lunar Industries"/>
    Night Wolf Incorporated <form:radiobutton path="loyaltyProgram" value="Night Wolf Incorporated"/>
    <br><br>
    What languages do you speak?
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br>


    <input type="submit" value="Ok">

</form:form>

</body>

</html>