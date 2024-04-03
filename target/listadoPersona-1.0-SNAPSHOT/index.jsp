
<%@page import="com.emergentes.modelo.Estudiante"%>
<%@page import="java.util.ArrayList"%>

<%
    
       if(session.getAttribute("listaper")==null)
       {
           ArrayList<Estudiante> aux = new ArrayList<Estudiante>();
           session.setAttribute("listaper", aux);
       }

    ArrayList<Estudiante> lista = (ArrayList<Estudiante>)session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <style>
                
        .mi-div {
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
                   <h3>Nombre: Limber Mamani Canaza</h3>
                   <h3>Carnet: 13213468</h3>
            </div>
        
        
        <h1>Registro de calificaciones</h1>
        
        
        <input type="submit" value="Nuevo registro" onclick="window.location.href='MainServlet?op=nuevo'" /> 
        <br>
        <br>
        <!-- <a href="MainServlet?op=nuevo">Nuevo registro</a> -->
        
        <table border="1" class="data-table">
            <!-- Datos cabesera -->
            <tr>
                <th>id</th>
                <th>nombres</th>
                <th>P1</th>
                <th>P2</th>
                <th>P3</th>
                <th>Nota</th>
                <th></th>
                <th></th>             
            </tr>
            <!-- datos tabla -->
            <%
                if(lista!=null)
                {
                    for(Estudiante item: lista)
                    {
                        
            %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getNombres()%></td>
                <td><%=item.getP1()%></td>
                <td><%=item.getP2()%></td>
                <td><%=item.getP3()%></td>
                 <td> <%=item.getP1()+item.getP2()+item.getP3()%> </td>
                <td>
                    <a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%=item.getId()%>"
                       onclick="return(confirm('esta seguro de elimanar??'))"
                       >Eliminar0</a>
                </td>
                
            </tr>
            <%
                
                    }
                }
            
            %>
        </table>
        </div>

    </body>
</html>
