<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加资讯</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>  
<%@include file="../public/head.jsp"%>
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<%@include file="../public/Menagement_Center.jsp"%>
		<div class="m_right">
            <p></p>		
            <div class="mem_t fr">
            	<a href="${basePath}pages/Member_ProAdd.jsp">添加资讯</a>
            </div>
            <form action="${basePath}addNews" method="post">
       			<table>
       				<tr>
       					<td>标题</td>
       					<td><input type="text" name="title"></td>
       				</tr>
       				<tr>
       					<td>内容</td>
       					<td><textarea name="content" cols="40" rows="3"></textarea></td> 
       				</tr>
       				<tr>
       					<td><input type="button" value="取消"></td>
       					<td><input type="submit" value="提交" ></td>
       				</tr>
       			</table>      			
       		</form>
        </div>
    </div>
	<!--End 用户中心 End--> 
    <%@include file="../public/foot.jsp"%> 
    
</div>
<script type="text/javascript" src="${basePath}static/js/Member_ProUp.js"></script>
</body>
</html>
