<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Empleados</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1>Listado de Empleado</h1>
	<%@include file="menu.jsp" %>
	
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th>#</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Email</th>
					<th>Teléfono</th>
					<th>Fecha Contratación</th>
					<th>Jefe</th>
					<th>Cargo</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${lista}">
				<tr>
					<td><a href="${pageContext.request.contextPath}/editar/${e.getId()}"><c:out value="${e.getId()}"></c:out></a></td>
					<td><c:out value="${e.getNombre()}"></c:out></td>
					<td><c:out value="${e.getApellido()}"></c:out></td>
					<td><c:out value="${e.getEmail()}"></c:out></td>
					<td><c:out value="${e.getTelefono()}"></c:out></td>
					<td><c:out value="${e.getFechaContratacion()}"></c:out></td>
					<td><c:out value="${e.getJefe().getNombre()}"></c:out> <c:out value="${e.getJefe().getApellido()}"></c:out></td>
					<td><c:out value="${e.getCargo()}"></c:out></td>
				</c:forEach>
			</tbody>
		</table>
	
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>