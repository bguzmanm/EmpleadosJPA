<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Empleado</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Editar Empleado</h1>
		<%@include file="menu.jsp"%>
		<form action="${pageContext.request.contextPath}/editar" method="post">
			<div class="mb-3">
				<label class="form-label">Id: <c:out value="${e.getId()}"></c:out> </label>
				<input type="hidden" value="${e.getId()}" id="id" name="id">
			</div>
			<div class="mb-3">
				<label for="nombre" class="form-label">Nombre:</label>
				<input type="text" class="form-control" id="nombre" name="nombre" value="${e.getNombre()}">
			</div>
			<div class="mb-3">
				<label for="apellido" class="form-label">Apellido:</label>
				<input type="text" class="form-control" id="apellido" name="apellido" value="${e.getApellido()}">
	 		</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email:</label>
				<input type="email" class="form-control" id="email" name="email" value="${e.getEmail()}">
			</div>
			<div class="mb-3">
				<label for="telefono" class="form-label">Telefono:</label>
				<input type="tel" class="form-control" id="telefono" name="telefono" value="${e.getTelefono()}">
			</div>
			<div class="mb-3">
				<label for="fechaContratacion" class="form-label">Fecha Contratación:</label>
				<input type="date" class="form-control" id="fechaContratacion" name="fechaContratacion" value="${e.getFechaContratacion()}">
			</div>
			<div class="mb-3">
				<label class="form-label">Jefe:</label>
				
				<select class="form-select">
				<c:forEach var="j" items="${jefes}">
					<c:if test="${j.getId() == e.getJefe().getId()}">
						<option selected value="${j.getId()}">
					</c:if>
					<c:if test="${j.getId() != e.getJefe().getId()}">
						<option value="${j.getId()}">
					</c:if>
						<c:out value="${j.getNombre()}"></c:out> <c:out value="${j.getApellido()}"></c:out></option>
				</c:forEach>
				</select>
				<c:out value="${e.getJefe().getNombre()}"></c:out> <c:out value="${e.getJefe().getApellido()}"></c:out>
				<input type="hidden" value="${e.getJefe()}" id="jefe">
			</div>
			<div class="mb-3">
				<label for="cargo" class="form-label">Cargo:</label>
				<input type="text" class="form-control" id="cargo" name="cargo" value="${e.getCargo()}">
			</div>			
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
		crossorigin="anonymous"></script>
</body>
</html>