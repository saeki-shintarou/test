<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<label for="title">タイトル</label><br />
<p>
<input id="radio-a" type="radio" name="title" value="出勤" checked><label for="radio-a">出勤</label><br>
  <input id="radio-b" type="radio" name="title" value="退勤"><label for="radio-b">退勤</label><br>
<br /><br />
</p>
<p>
<input id="radio-a" type="radio" name="content" value="通常" checked><label for="radio-a">通常</label><br>
  <input id="radio-b" type="radio" name="content" value=”変更あり”><label for="radio-b">変更あり</label><br>
<br /><br />
</p>

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>