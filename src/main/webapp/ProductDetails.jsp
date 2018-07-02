<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String id = request.getParameter("id"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品详情页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${basePath }static/css/ShopShow.css" />
    <link rel="stylesheet" type="text/css" href="${basePath }static/css/MagicZoom.css" />
  </head>
  	
  <body>
    <div class="aaaa" id="<%=id %>" ></div>
 	<%@include file="public/head.jsp"%>
 	<script type="text/javascript" src="${basePath }static/js/n_nav.js"></script>
 	
    <script type="text/javascript" src="${basePath }static/js/MagicZoom.js"></script>
    <script type="text/javascript" src="${basePath }static/js/num.js">
    	var jq = jQuery.noConflict();
    </script>
    <script type="text/javascript" src="${basePath }static/js/p_tab.js"></script>
    <script type="text/javascript" src="${basePath }static/js/shade.js"></script>
    <!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	<li><a href="${basePath }index.jsp">首页</a></li>
        </ul>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End--> 
 	<div class="i_bg">
	<div class="postion">
    	
    </div>    
    <div class="content">
    	                    
        <div id="tsShopContainer">
            <div id="tsImgS"></div>
            <div id="tsPicContainer">
                <div id="tsImgSArrL" onclick="tsScrollArrLeft()"></div>
                <div id="tsImgSCon">
                    <ul>
                   
                    </ul>
                </div>
                <div id="tsImgSArrR" onclick="tsScrollArrRight()"></div>
            </div>
        </div>
        
        <div class="pro_des">
        	<div class="des_name">
            	<p></p>
            </div>
            <div class="des_price">
            </div>
            <div class="des_choice">
            	<span class="fl">型号选择：</span>
                <ul>
                	<li class="checked">30ml<div class="ch_img"></div></li>
                    <li>50ml<div class="ch_img"></div></li>
                    <li>100ml<div class="ch_img"></div></li>
                </ul>
            </div>
            <div class="des_choice">
            	<span class="fl">颜色选择：</span>
                <ul>
                	<li>红色<div class="ch_img"></div></li>
                    <li class="checked">白色<div class="ch_img"></div></li>
                    <li>黑色<div class="ch_img"></div></li>
                </ul>
            </div>
            <div class="des_share">
                
            </div>
            <div class="des_join">
            	<div class="j_nums">
                	<input type="text" value="1" name="" class="n_ipt" />
                    <input type="button" value="" onclick="addUpdate(jq(this));" class="n_btn_1" />
                    <input type="button" value="" onclick="jianUpdate(jq(this));" class="n_btn_2" />   
                </div>
                <span class="fl"><a class="j_car" onclick="ShowDiv_1('MyDiv1','fade1')"><img src="${basePath }static/images/j_car.png" /></a></span>
            </div>            
        </div>    
    </div>
</div>
  </body>
 <script type="text/javascript" src="${basePath }static/js/ShopShow.js"></script>
<script type="text/javascript" src="${basePath }static/js/ProductDetails.js"></script>
</html>
