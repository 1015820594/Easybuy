<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户修改</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript">
		var uid = ${param.uid}
	</script>
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
	            	用户修改
	            </div>
       			<table id="table">
       				
       			</table>  	
            <form action="${basePath }pages/Member_Userlist.jsp" method="post">
	                			
       		</form>
        </div>
    </div>
	<!--End 用户中心 End--> 
    <%@include file="../public/foot.jsp"%> 
</div>
<script type="text/javascript" src="${basePath}static/js/Member_UserUp.js"></script>
</body>
</html>
