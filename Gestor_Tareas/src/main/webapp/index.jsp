<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.clases.Tarea"%>
<%
    if (session.getAttribute("listaper") == null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Tarea> lista = (ArrayList<Tarea>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Gestor de tareas</h1></center>
        <center><h3>Nombre: Carlos Daniel Mamani Corina</h3></center>
        
        
        <center>
        <table border="1" cellspacing="0">
            <a href="MainServlet?op=nuevo" aling="rigth">Nuevo</a>
            <tr>
                <th>ID</th>
                <th>TAREA</th>
                <th>COMPLEMENTO</th>
                <th colspan="2">Acciones</th>

            </tr>
             <%
                if(lista != null) {
                    for(Tarea item:lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getTarea() %></td>
                <td>
                    <input type="checkbox">
                </td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                       onclick="return(confirm('Esta seguro de Eliminar'))">Eliminar</a>
                </td>
            </tr>
            <%                    
                    }
                }
            %>
        </table></center>
    </body>
</html>
