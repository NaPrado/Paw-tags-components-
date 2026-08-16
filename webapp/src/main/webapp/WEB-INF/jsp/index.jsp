<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="paw" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Components.css">
    <link href="https://fonts.googleapis.com/css2?family=Inconsolata:wght@400;500;600;700&display=swap" rel="stylesheet">
<body>
<h2>Hello ${greeting}!</h2>

<main class="page">

        <div class="actions-row">
        <paw:input
                size= "md"
                placeholderText="Escribi tu nombre"
                inputText=""
                />
            <paw:button text="Aceptar" size="sm" cssClass="btn-aceptar" />
            <paw:button text="Cancelar" size="sm" cssClass="btn-cancelar" />
        </div>
        <paw:card
              title="Título"
              content="Descripción"
              placeholder="Próximamente" />
        <paw:card
              title="Título"
              content="Descripción de la card."
              imageUrl="${pageContext.request.contextPath}/images/ejemplo.jpg"
              imageAlt="Descripción de la imagen" />
</main>
</body>
</html>
