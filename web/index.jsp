<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Datos del Estudiante</title>
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
            width: 350px;
        }
        h1 {
            color: #2c3e50;
            margin-bottom: 25px;
            font-size: 22px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 5px;
            color: #555;
            font-weight: bold;
            font-size: 14px;
        }
        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1> Registro de Estudiante</h1>
        <form name="StudentForm" action="response.jsp" method="GET">
            <label>Nombre:</label>
            <input type="text" name="name" placeholder="Tu nombre completo"/>
            
            <label>Fecha de nacimiento:</label>
            <input type="date" name="birthDate"/>
            
            <input type="submit" value="Enviar →"/>
        </form>
    </div>
</body>
</html>