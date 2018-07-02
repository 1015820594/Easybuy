<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
  <%@include file="../public/head.jsp"%>
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	<li><a href=" ${basePath }index.jsp">首页</a></li>
        </ul>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg">  
    <div class="content mar_20">
    	<img src="${basePath }static/images/img1.jpg" />        
    </div>
    
    <!--Begin 第一步：查看购物车 Begin -->
    <div class="content mar_20">
    	<table border="0" class="car_tab" style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
          <tr>
            <td class="car_th" width="490">商品名称</td>
            <td class="car_th" width="140">单价</td>
            <td class="car_th" width="150">购买数量</td>
            <td class="car_th" width="130">小计</td>
            <td class="car_th" width="150">操作</td>
          </tr>
        </table>
        <table border="0"  style="width:1200px; margin-bottom:50px;" cellspacing="0" cellpadding="0">
		        <tr height="70">
		          	<td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
		            	<label class="r_rad"><input type="checkbox" name="clear" checked="checked"></label><label class="r_txt">清空购物车</label>
		                <span class="fr">商品总价：<b style="font-size:22px; color:#ff4e00;" id="allcost">￥2899</b></span>
		            </td>
		          </tr>
		        <tr valign="top" height="20">
		          	<td colspan="6" align="right">
		            	<a href="${basePath }pages/index.jsp"><img src="static/images/buy1.gif"></a>&nbsp; &nbsp; <a id="gwjs" href="${basePath }pages/BuyCar_Two.jsp" ><img src="static/images/buy2.gif"></a>
		            </td>
		          </tr>
          </table>
    </div>
	<!--End 第一步：查看购物车 End--> 
    
    
    <!--Begin 弹出层-删除商品 Begin-->
    <div id="fade" class="black_overlay"></div>
    <div id="MyDiv" class="white_content">             
        <div class="white_d">
            <div class="notice_t">
                <span class="fr" style="margin-top:10px; cursor:pointer;" onclick="CloseDiv('MyDiv','fade')"><img src="${basePath }static/images/close.gif" /></span>
            </div>
            <div class="notice_c">
           		
                <table border="0" align="center" style="font-size:16px;" cellspacing="0" cellpadding="0">
                  <tr valign="top">
                    <td>您确定要把该商品移除购物车吗？</td>
                  </tr>
                	 <tr height="50" valign="bottom">
                    <td><a href="javascript:;" class="b_sure">确定</a><a href="#" class="b_buy">取消</a></td>
                  </tr>
                </table>
          <tr height="70">
          	<td colspan="6" style="font-family:'Microsoft YaHei'; border-bottom:0;">
            	<label class="r_rad"><input type="checkbox" name="clear" checked="checked"></label><label class="r_txt">清空购物车</label>
                <span class="fr">商品总价：<b id="delall" style="font-size:22px; color:#ff4e00;">￥2899</b></span>
            </td>
          </tr>
            </div>
        </div>
    </div>    
    <!--End 弹出层-删除商品 End-->

<%@include file="../public/foot.jsp"%>    
	<script type="text/javascript" src="${basePath }static/js/BuyCar.js"></script>
	<script type="text/javascript" src="${basePath }static/js/n_nav.js"></script>   
    <script type="text/javascript" src="${basePath }static/js/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    <script type="text/javascript" src="${basePath }static/js/shade.js"></script>


  </body>
</html>
