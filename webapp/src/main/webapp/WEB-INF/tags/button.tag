<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="text" required="true" %>
<%@ attribute name="size" required="false" %>
<%@ attribute name="cssClass" required="false" %>
<%@ attribute name="disabled" required="false" type="java.lang.Boolean" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
< set var="btnSize" value="${not empty size ? size : 'md'}"/>
< set var="btnCssClass" value="${not empty cssClass ? cssClass : ''}" />
< set var="btnDisabled" value="${disabled ne null ? disabled: false}" />
< set var="classes" value="btn btn-${btnSize} ${btnCssClass}" />
<button type="button"  class="${classes}"
    <c:if test="${btnDisabled}">disabled</c:if>
>
${text}
</button>