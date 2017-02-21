<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示歌曲列表</title>
<base href="${ctx}">
<script  src="${ctx}/js/jquery.min.js"></script>

<!-- 下面JS为页面初始化异步加载数据，
如果采用easyui ,那么返回的data数据就可以直接绑定到表格上，
下面才的的拼接方式上无任何框架的方式 -->
<!-- -->
<script type="text/javascript">
$(function(){
	$.ajax({
		type: "GET",
        url: "${ctx}/music/list",
        success: function(data){
        	var body ="";
        	var td = "<td><a href='${ctx}/music/addLoad'>增加</a> <a href='${ctx}/music/editLoad?musicid=${music.musicid}'>修改</a>   <a href='${ctx}/music/delete?musicid=${music.musicid}'>删除</a> </td>"
        	for(var i=0;i< data.length;i++)
        	{
        		body  = body + "<tr>"; 
        		for(var key in data[i]){ 
        		
        			body  = body   + "<td>"+data[i][key]+"</td>" ; 
        			
        		}
        		body  =    body + td + "</tr>";   
        	}
        	$("#tab tbody").append(body); 
        }
	});
});

</script> 
</head>
<body>
<a href="${ctx}/music/addLoad">增加</a> 
	<table id="tab">
  		<tr>
  			<th>歌曲ID</th>
  			<th>歌曲名</th>
  			<th>歌曲图片</th>
  			<th>歌曲时长</th>
  			<th>歌曲路径</th>
  			<th>歌词路径</th>
  			<th>点击量</th>
  			<th>下载量</th>
  			<th>上传时间</th>
  		</tr>
  		 
  		<%----%> <c:forEach items="${musicList}"  var="music">
     	<tr>
  			<td>${music.musicid}</td>
  			<td>${music.musicname}</td>
  			<td>${music.musicphoto}</td>
  			<td>${music.duration}</td>
  			<td>${music.musicpath}</td>
  			<td>${music.lyricspath}</td>
  			<td>${music.clickrate}</td>
  			<td>${music.downloadrate}</td>
  			<td>${music.uploadtime}</td>
  			<td><a href="${ctx}/music/editLoad?musicid=${music.musicid}">修改</a>   <a href="${ctx}/music/delete?musicid=${music.musicid}">删除</a> </td>
  		</tr>
     </c:forEach> 
  	</table>
    
	<div class="pagelist"> <a href="">上一页</a> <span class="current">1</span><a href="">2</a><a href="">3</a><a href="">下一页</a><a href="">尾页</a> </div>
</body>
</html>