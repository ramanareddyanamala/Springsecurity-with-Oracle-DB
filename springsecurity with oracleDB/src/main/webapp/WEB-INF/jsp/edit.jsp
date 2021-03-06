<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file='css/styles.css'%>

<html>
<head>
    <title>TotalTask</title>
</head>

<body>
    <table align = "center" class="table" cellspacing='0'>
    <tr><th valign = "top">Edit an organization</th></tr>

    <form method="POST">
    <tr><td>Name:</td>
    <td><input type="text" name="name" value="${organization.name}" /></td></tr>
    <tr><td> Country : </td>

    <td><select name="country.id" >
    <option value="${organization.country.id}">${organization.country.name}</option>
    <c:forEach var="country" items="${countries}">
    <option value="${country.id}">${country.name}</option>
    </c:forEach>
    </select></td></tr>

    <tr><td>Address:</td>
    <td><input type="text" name="address" value="${organization.address}" /></td></tr>
    <tr><td>Phone:</td>
    <td><input type="text" name="phone" value="${organization.phone}" /></td></tr>
    <tr><td>Market Cap:</td>
    <td><input type="number" name="marketCap" value="${organization.market_cap}" /></td></tr>
    </table>
    <table align = "center" class="table" cellspacing='0'>
    <tr><c:url var="add" value="/add"/>
    <td><a href="/"><button>Cancel</button></a></td>
    <td><input type="reset" value="Reset" /a></td>
    <td><input type="submit" value="Submit"/a></td></tr>
    </form>
    </table>
</body>
</html>


