<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Components.css">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@400;500;600;700&display=swap" rel="stylesheet">
<body>
<h2>Hello ${greeting}!</h2>
<paw:button text="Aceptar" size="sm" cssClass="btn-aceptar" />
<paw:button text="Cancelar" size="sm" cssClass="btn-cancelar" />
</body>
</html>