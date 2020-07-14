<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="./layout/app.jsp">
    <c:param name="content">
    <h1><a href="<c:url value='/time/new' />">勤怠登録(push)</a></h1>
        <br>
        <h2>勤怠履歴</h2>
        <ul>
            <c:forEach var="Time" items="${Time}">
                <li>
  <a href="<c:url value='/time/show?id=${Time.id}' />">
                        <c:out value="${Time.id}" />
                    </a>
                    <fmt:formatDate value="${Time.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /> &gt;<c:out value="${Time.title}"></c:out> &gt; <c:out value="${Time.content}" />
                </li>
            </c:forEach>
        </ul>
  <div id="pagination">
            （全 ${Time_count} 件）<br />
            <c:forEach var="i" begin="1" end="${((Time_count - 1) / 4) + 1}" step="1">
                <c:choose>
                    <c:when test="${i == page}">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/time?page=${i}"><c:out value="${i}" /></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
 <p><a href="<c:url value='/' />">日報管理システムに戻る</a></p>

    </c:param>
</c:import>