<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Respuesta</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .card {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 380px;
            text-align: center;
        }
        h2 { color: #2c3e50; margin-bottom: 25px; }
        p { color: #555; font-size: 16px; margin: 10px 0; }
        strong { color: #2c3e50; }
        .back-btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #3498db;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 14px;
        }
        .back-btn:hover { background-color: #2980b9; }
    </style>
</head>
<body>
    <div class="card">

        <jsp:useBean id="mybean" scope="session" 
                     class="org.mypackage.hello.NameHandler" />
        <jsp:setProperty name="mybean" property="name" />
        <jsp:setProperty name="mybean" property="birthDate" />

        <jsp:useBean id="clock" class="java.util.Date" />
        <c:set var="hora" value="${clock.hours}" />

        <c:choose>
            <c:when test="${hora >= 0 and hora < 12}">
                <h2>️ ¡Buenos días, <jsp:getProperty name="mybean" property="name" />!</h2>
            </c:when>
            <c:when test="${hora >= 12 and hora < 18}">
                <h2>️ ¡Buenas tardes, <jsp:getProperty name="mybean" property="name" />!</h2>
            </c:when>
            <c:otherwise>
                <h2> ¡Buenas noches, <jsp:getProperty name="mybean" property="name" />!</h2>
            </c:otherwise>
        </c:choose>

        <p><strong> Fecha de nacimiento:</strong><br/>
           <jsp:getProperty name="mybean" property="birthDate" /></p>

        <p><strong> Edad:</strong><br/>
           <jsp:getProperty name="mybean" property="age" /> años</p>

        <a href="index.jsp" class="back-btn">← Volver</a>

    </div>
</body>
</html>