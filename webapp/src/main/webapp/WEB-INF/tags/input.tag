<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="placeholderText" required="true" %>
<%@ attribute name="inputText" required="false" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="name" required="false" %>
<%@ attribute name="type" required="false" %>

<c:set var="inputSize" value="${not empty size ? size : 'md'}" />
<c:set var="inputCssClass" value="${not empty cssClass ? cssClass : ''}" />
<c:set var="inputType" value="${not empty type ? type : 'text'}" />

<div class="input ${inputCssClass}">
<%-- <c:if test="${type == 'search'}">
   <i data-lucide="search"></i>
</c:if> --%>
    <input
        type="${inputType}"
        name="${name}"
        class="input-field input-${inputSize}"
        placeholder="${placeholderText}"
        value="<c:out value='${inputText}'/>"
    />
</div>