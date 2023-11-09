<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hung1
  Date: 11/9/2023
  Time: 10:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%=request.getAttribute("name")%></h1>
<h1>${name}</h1>
<span>Số lượng kí tự của name : <c:out value="${name.length()}"></c:out></span>
<c:set var="age" value="100" scope="page"></c:set>
<p><c:out value="${age}"></c:out> tuổi</p>

<c:if test="${age <100}">
    <p>Ít hơn 100 tuổi</p>
</c:if>

<c:if test="${age >100}">
    <p>lơn hơn 100 tuổi</p>
</c:if>

<c:choose>
    <c:when test="${age%2==0}">
        <p>Chẵn</p>
    </c:when>
    <c:otherwise>
        <p>Lẻ</p>
    </c:otherwise>
</c:choose>
<%!
    int[] arr = {10,20,30,40,50};
%>
<c:forEach items="<%=arr%>" var="n" varStatus="loop">
    <p>STT : ${loop.count} , INDEX : ${loop.index} ,
        CURRENT : ${loop.current},  VALUE: ${n}</p>
</c:forEach>
</body>
</html>
