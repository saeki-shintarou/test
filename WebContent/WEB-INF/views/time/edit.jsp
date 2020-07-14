<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="./layout/app.jsp">
    <c:param name="content">
        <h2>id : ${time.id} </h2>

  <p><a href="#" onclick="confirmDestroy();">削除する</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/time/destroy">
            <input type="hidden" name="_token" value="${_token}" />
        </form>
        <script>
        function confirmDestroy() {
            if(confirm("本当に削除してよろしいですか？")) {
                document.forms[1].submit();
            }
        }
        </script>

        <p><a href="${pageContext.request.contextPath}/time">一覧に戻る</a></p>

    </c:param>
</c:import>