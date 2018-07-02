<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分类列表</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="static/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="static/js/menu.js"></script>    
	<script type="text/javascript" src="static/js/select.js"></script>
</head>
<body>  
<%@include file="../public/head.jsp"%>
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<%@include file="../public/Menagement_Center.jsp"%>
		<div class="m_right">
            <p></p>		
            
			<div class="mem_t">
            	分类列表
            </div>
            
            <table border="1" class="mem_tab" style=" width:870px; margin-top:10px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="th_bg1"  >选择</td>
                <td class="th_bg1"  >分类名称</td>
                <td class="th_bg1"  >分类级别</td>
                <td class="th_bg1"  >父级分类</td>
                <td class="th_bg1"  >操作</td>
              </tr>
            </table>
        </div>
    </div>
	<!--End 分类管理 End--> 
    <%@include file="../public/foot.jsp"%> 
</div>
<script type="text/javascript" src="${basePath }static/js/Member_Classify.js"></script>
</body>
</html>
