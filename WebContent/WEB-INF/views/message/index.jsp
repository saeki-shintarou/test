<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="./layout/app.jsp">
  <c:param name="content">

                <c:out value="${flush}"></c:out>
        <h2>商談状況一覧</h2>
<h3>NO:　　商談名　　:　　商談状況　　:  TODO </h3>
            <c:forEach var="message" items="${messages}">
                <li>
                    <a href="${pageContext.request.contextPath}/message/show?id=${message.id}">
                        <c:out value="${message.id}" />
                    </a>
                    ：<c:out value="${message.title}"></c:out> : <c:out value="${message.content}" />
               : <c:out value="${message.tx}" /> </li>
            </c:forEach>



        <p><a href="${pageContext.request.contextPath}/message/new">商談状況の追加</a></p>
        <p><a href="<c:url value='/' />">日報管理システムに戻る</a></p>
    </c:param>
</c:import>