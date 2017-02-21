<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改信息</title>
<base href="${ctx}">
</head>
<body>
    <form action="${ctx}/music/edit"  method="post">
  	<input type="text" name="musicid" value="${music.musicid}" />
  	<table>
  		<tr> 
  			<th>歌曲名</th>
  			<td><input type="text" name="musicname" value="${music.musicname}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>歌曲时长</th>
  			<td><input type="text" name="duration" value="${music.duration}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>歌曲图片</th>
  			<td><input type="text" name="musicphoto" value="${music.musicphoto}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>歌曲路径</th>
  			<td><input type="text" name="musicpath" value="${music.musicpath}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>歌词路径</th>
  			<td><input type="text" name="lyricspath" value="${music.lyricspath}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>点击量</th>
  			<td><input type="text" name="clickrate" value="${music.clickrate}" /></td>
  		</tr>
  		<tr>
  			 
  			<th>下载量</th>
  			<td><input type="text" name="downloadrate" value="${music.downloadrate}" /></td>
  		</tr>
  		<tr>
  			<td colspan="2"><input type="submit" value="修改"> </td>
  		</tr>
  	</table>
  	</form> 
	
</body>
</html>