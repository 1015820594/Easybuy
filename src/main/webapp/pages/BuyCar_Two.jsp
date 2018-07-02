<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>确认订单</title>
	<meta http-equiv="pragma" content="no-cache">
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
    	<img src="${basePath }static/images/img2.jpg" />        
    </div>
    
    <!--Begin 第二步：确认订单信息 Begin -->
    <div class="content mar_20">
    	<div class="two_bg">
        	<div class="two_t">
            	<span class="fr"><a href="javascript:;">修改</a></span>商品列表
            </div>
            <table border="0" class="car_tab" id="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="car_th" width="550">商品名称</td>
                <td class="car_th" width="140">属性</td>
                <td class="car_th" width="150">购买数量</td>
                <td class="car_th" width="130">小计</td>
              </tr>
            </table>
            
            <div class="two_t">
            	<span class="fr"><a href="javascript:;"></a></span>收货人信息
            </div>
            <table border="0" class="peo_tab" style="width:1110px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="p_td" width="160">用户名称</td>
                <td width="395">${user.userName }</td>
                <td class="p_td" width="160">登录名称</td>
                <td width="395">${user.loginName }</td>
              </tr>
              <tr>
                <td class="p_td" width="160">手机号</td>
                <td width="395">${user.mobile }</td>
                <td class="p_td" width="160">电子邮件</td>
                <td width="395">${user.email }</td>
              </tr>
            </table>
            <div class="two_t">
            	<span class="fr"><a href="javascript:;"></a></span>收货地址
            </div>
            <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0" id="address">

            </table> 
            <div class="two_t">
            	<span class="fr"><a href="javascript:;"></a></span>添加地址
            </div>
            <table border="0" class="car_tab" style="width:1110px;" cellspacing="0" cellpadding="0" >
					 <tr>
		                <td>备注:<input/></td>
		                <td>地址:<input/></td>
		                 <td><input type="button" value="添加该地址" id="add_address"/></td>
		              </tr>
            </table> 
            <div class="two_t">
            	支付方式
            </div>
            <ul class="pay">
                <li class="checked">余额支付<div class="ch_img"></div></li>
                <li>银行亏款/转账<div class="ch_img"></div></li>
                <li>货到付款<div class="ch_img"></div></li>
                <li>支付宝<div class="ch_img"></div></li>
            </ul>
            
           
            <table border="0" style="width:900px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr height="70">
                <td align="right">
                	<b style="font-size:14px;">应付款金额：<span id="allcost" style="font-size:22px; color:#ff4e00;"></span></b>
                </td>
              </tr>
              <tr height="70">
                <td align="right"><a href="javascript:;" id="submit"><img src="${basePath }static/images/btn_sure.gif" /></a></td>
              </tr>
            </table>

            
        	
        </div>
    </div>
	<!--End 第二步：确认订单信息 End-->
    
    <%@include file="../public/foot.jsp"%>    
	<script type="text/javascript" src="${basePath }static/js/BuyCar_Two.js"></script>
	<script type="text/javascript" src="${basePath }static/js/n_nav.js"></script>   
    <script type="text/javascript" src="${basePath }static/js/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    <script type="text/javascript" src="${basePath }static/js/shade.js"></script>


</body>

</html>
