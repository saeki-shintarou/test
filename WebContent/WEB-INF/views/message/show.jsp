<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="./layout/app.jsp">
    <c:param name="content">

        <h2>id : ${message.id} の商談状況詳細ページ</h2>

       <table>
                    <tbody>

                    <tr>
                         <th>開始日</th>
                            <td><fmt:formatDate value="${message.created_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>更新日</th>
                            <td><fmt:formatDate value="${message.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                        </tr>
                        <tr>
                            <th>商談名</th>
                            <td><c:out value="${message.title}" /></td>
                        </tr>
                        <tr>
                            <th>商談詳細</th>
                            <td><c:out value="${message.content}" /></td>
                        </tr>
                         <tr>
                            <th>商談に対してのTODO</th>
                            <td><c:out value="${message.tx}" /></td>
                        </tr>


                    </tbody>
                </table>
        <p><a href="${pageContext.request.contextPath}/message">一覧に戻る</a></p>
<p><a href="${pageContext.request.contextPath}/message/edit?id=${message.id}">この商談を編集する</a></p>
    </c:param>
</c:import>