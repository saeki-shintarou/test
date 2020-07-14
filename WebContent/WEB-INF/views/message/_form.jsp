<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="title">商談名</label><br />
<input type="text" name="title" value="${message.title}" />
<br /><br />

<label for="content">進行状況</label><br />
<input type="text" name="content" value="${message.content}" />
<br /><br />
<dl>
    <dt>商談に対してのTODO</dt>
    <dd>
    <input type="text" name="tx" value="${message.tx}" />
    </dd>
  </dl>
<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>