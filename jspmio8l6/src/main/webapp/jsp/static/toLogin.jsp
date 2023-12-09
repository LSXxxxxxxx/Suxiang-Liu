<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- token过期或未Login时强制跳转到Login页 -->
alert('token过期或未Login!')
window.location.href="${pageContext.request.contextPath}/jsp/login.jsp"
