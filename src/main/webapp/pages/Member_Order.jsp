<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>我的订单</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
    <script type="text/javascript" src="${basePath }static/js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="${basePath }static/js/menu.js"></script>    
        
	<script type="text/javascript" src="${basePath }static/js/select.js"></script>
        
    
<title>用户订单</title>
</head>
<body>  
<%@include file="../public/head.jsp"%>

<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
		<%@include file="../public/Menagement_Center.jsp"%>

		<div class="m_right">
            <p></p>
            <div class="mem_tit">我的订单</div>
            
           <table border="1" class="mem_tab" style="width:930px; text-align:center; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tbody>

            </tbody>
           </table>
        </div>
    </div>
	<!--End 用户中心 End--> 
   <%@include file="../public/foot.jsp"%>
</div>
<script type="text/javascript" src="${basePath }static/js/Member_Order.js"></script>
</body>

</html>
