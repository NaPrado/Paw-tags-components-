<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="title" required="false" %>
<%@ attribute name="content" required="true" %>
<%@ attribute name="imageUrl" required="false" %>
<%@ attribute name="imageAlt" required="false" %>
<%@ attribute name="placeholder" required="false" %>
<%@ attribute name="cssClass" required="false" %>

<div class="card ${cssClass}">
    <div class="card-media">
        <c:choose>

            <c:when test="${not empty imageUrl}">
                <img
                    class="card-image"
                    src="${imageUrl}"
                    alt="${empty imageAlt ? title : imageAlt}"
                    onerror="
                        this.style.display='none';
                        this.nextElementSibling.style.display='flex';
                    "
                />

                <div
                    class="card-placeholder"
                    aria-label="Imagen no disponible"
                    style="display: none;"
                >
                    <span>
                        ${empty placeholder ? 'Sin imagen' : placeholder}
                    </span>
                </div>
            </c:when>

            <c:otherwise>
                <div
                    class="card-placeholder"
                    aria-label="Imagen no disponible"
                >
                    <span>
                        ${empty placeholder ? 'Imagen no disponible' : placeholder}
                    </span>
                </div>
            </c:otherwise>

        </c:choose>
    </div>

    <div class="card-body">
        <c:if test="${not empty title}">
            <h3 class="card-title">${title}</h3>
        </c:if>

        <p class="card-text">${content}</p>
    </div>
</div>