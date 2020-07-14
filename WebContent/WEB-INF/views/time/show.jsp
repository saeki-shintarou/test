<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="./layout/app.jsp">
    <c:param name="content">
        <h2>勤怠履歴id : ${Time.id} の詳細ページ</h2>
        <p>  <fmt:formatDate value="${time.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></p>
        <p><c:out value="${time.title}"></c:out></p>
        <p> <c:out value="${time.content}" /> </p>



        <p><a href="${pageContext.request.contextPath}/time">一覧に戻る</a></p>

    </c:param>
</c:import>