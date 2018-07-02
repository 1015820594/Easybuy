<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
String id = request.getParameter("id"); 
String list = request.getParameter("list");
request.setAttribute("id", id);
request.setAttribute("list", list);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>指定分类列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
  </head>
  
  <body>
 <script type="text/javascript">
  var id = "${id}";
  var list = "${list}";
</script>
<%@include file="public/head.jsp"%>
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	<li><a href="index.jsp">首页</a></li>
        </ul>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End--> 

<div class="i_bg">

    <div class="content mar_20">
    	<div class="l_history">
        	<div class="his_t">
            	<span class="fl">我的收藏</span>
            </div>
        	<ul>
            	
        	</ul>
        </div>
        <div class="l_list">
        	<div class="list_t">
                <span class="fr"></span>
            </div>
            <div class="list_c">
                <ul class="cate_list">
                	
                </ul>
                <div class="pages">
                	
                </div>
            </div>
        </div>
    </div>

<%@include file="public/foot.jsp"%>

</div>
<script type="text/javascript" src="${basePath }static/js/Classify.js"></script>
  </body>
</html>
