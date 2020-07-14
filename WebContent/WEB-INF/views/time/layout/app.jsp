<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>タイムカード</title>
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/sty.css' />">
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h1>商談内容</h1>
            </div>
            <div id="content">
                ${param.content}
            </div>
            <div id="footer">
               有限会社佐藤建設
            </div>
        </div>
    </body>
</html>