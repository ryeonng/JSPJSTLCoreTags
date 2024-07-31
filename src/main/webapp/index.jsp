<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예제</title>
</head>
<body>
   <h1>JSTL 예제</h1>

   <!-- c:set을 사용하여 메시지 설정 -->
   <c:set var="message" value="안녕하세요, JSTL !"></c:set>
   <p>
      메시지:
      <c:out value="${message}" />
   </p>

   <!-- c:if를 사용하여 메시지가 null이 아닌 경우 출력 -->
   <c:if test="${message ne null}">
      <p>메시지 값이 null이 아닙니다</p>
   </c:if>

   <!-- c:forEach를 사용하여 1부터 10까지 숫자 출력 -->
   <c:forEach var="i" begin="1" end="10">
      <p>Number : ${i}</p>
   </c:forEach>

   <!-- 현재 시간 포맷팅 예제 -->
   <h2>JSTL Formatting Example</h2>
	<c:set var="now" value="<%=new Date() %>"/>
	<fmt:formatDate var="formattedDate"  value="${now}" pattern="yyyy-MM-dd HH:mm:ss" />
	
	<p>현재 시간 : ${formattedDate} </p>
	
	<c:set var="price" value="12345.678"/>
	<fmt:formatNumber value="${price}" type="currency" var="formatPrice" />
	<p>Format Price : ${formatPrice} </p>
	
		
</body>
</html>