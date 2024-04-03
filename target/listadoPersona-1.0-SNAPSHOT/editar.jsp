<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    

    Estudiante reg = (Estudiante) request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
                    <style>
                
        .mi-div {
                        width: 200px;
            height: 100px;
            border: 2px solid #ccc; /* Agrega un borde de 2px de ancho, sólido y color gris claro */
            padding: 20px; /* Agrega un relleno interno de 20px */
        }
        body {
            display: flex;
            justify-content: center;

            height: 100vh;
            margin: 0;
        }
        
        .container {
            padding-top: 40px;
            width: 80%;
            margin-top: 5px;
        }
        
        h1, h2 {
            text-align: center;
        }
        
        .data-table {
            margin-top: 5px;
            width: 100%;
            border-collapse: collapse;
        }
        
        .data-table th, .data-table td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        
        .data-table th {
            background-color: #f2f2f2;
            text-align: left;
        }
        
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
        
    </head>
    <body>
        
        <div class="container">
                    <div class="mi-div">
         <h1>Primer Parcial TEM-742</h1>
        <h2>Nombre: Limber Mamani Canaza</h2>
        <h2>Carnet: 13213468</h2>
        </div>
        
        
        <h1>Registro de calificaciones</h1>
        <br>
        
        <div class="mi-div">
            
                    <form action="MainServlet" method="post">
            <table>

                <tr>
                    <td>Nombre del estudiante </td>
                    <td><input type="text" name="nombres" value="<%= reg.getNombres() %>"></td>
                </tr>
                
                 <tr>
                    <td>Primer parcial (30 puntos) </td>
                    <td><input type="text" name="P1" value="<%= reg.getP1()%>"></td>
                </tr>
                
                 <tr>
                    <td>Segundo parcial (30 puntos)</td>
                    <td><input type="text" name="P2" value="<%= reg.getP2()%>"></td>
                </tr>
                
                <tr>
                    <td>Examen final (40 puntos)</td>
                    <td><input type="text" name="P3" value="<%= reg.getP3()%>"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="enviar"></td>
                </tr>
                
                
                
            </table>
        </form>
            
        </div>
        

        </div>

    </body>
</html>
