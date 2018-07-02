<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品修改</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
	<script type="text/javascript">
		var pid = ${param.pid}
	</script>
<body>  
<%@include file="../public/head.jsp"%>
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<%@include file="../public/Menagement_Center.jsp"%>
		<div class="m_right">
            <p></p>		
            <div class="mem_t">
            	商品修改
            </div>
            <form action="${basePath}upProduct" method="post" enctype="multipart/form-data">
       			<table>
       				<tr>
       					<td>一级分类</td>
       					<td><select name="categoryLevel1Id" id="categoryLevel1">
       							<option value="0">选择</option>
       							<c:forEach items="${list}" var="p" varStatus="sta">
       								<option value="${p.pcid }">${p.name }</option>
       							</c:forEach>
       						</select>
       					</td>
       				</tr>
       				<tr>
       					<td>二级分类</td>
       					<td><select name="categoryLevel2Id" id="categoryLevel2">
       							<option value="0">选择</option>
       						</select>
       					</td>
       				</tr>
       				<tr>
       					<td>三级分类</td>
       					<td><select name="categoryLevel3Id" id="categoryLevel3">
       							<option value="0">选择</option>
       						</select></td>
       				</tr>
       				<tr>
       					<td>商品名称</td>
       					<td><input type="text" name="pname" id="panme"></td>
       				</tr>
       				<tr>
       					<td>商品图片</td>
       					<td><input name="files" type="file" /></td>
       				</tr>
       				<tr>
       					<td>商品描述</td>
       					<td><textarea name="description" cols="40" rows="3" id="description"></textarea></td>
       				</tr>
       				<tr>
       					<td>商品单价</td>
       					<td><input type="text" name="price" id="price"></td>
       				</tr>
       				<tr>
       					<td>库存</td>
       					<td><input type="text" name="stock" id="stock"></td>
       				</tr>
       				<tr>
       					<td>是否启用</td>
       					<td><select name="isDelete" id="isDelete">
       							<option value="-1">选择</option>
       							<option value="0">启用</option>
       							<option value="1">不启用</option>
       						</select>
       					</td>
       				</tr>
       				<tr style="display: none">
       					<td><input type="text" name="pid" value="${param.pid}"/></td>
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
