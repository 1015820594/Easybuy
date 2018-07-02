<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% float cost = Float.parseFloat(request.getParameter("cost")) ; %>
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
    	<img src="${basePath }static/images/img3.jpg" />        
    </div>
    
    <!--Begin 第三步：提交订单 Begin -->
    <div class="content mar_20">
    	
        <!--Begin 银行卡支付 Begin -->
    	<div class="warning">        	
            <table border="0" style="width:1000px; text-align:center;" cellspacing="0" cellpadding="0">
              <tr height="35">
                <td style="font-size:18px;">
                	感谢您在本店购物！您的订单已提交成功，请记住您的订单号: <font color="#ff4e00"></font>
                </td>
              </tr>
              <tr>
                <td style="font-size:14px; font-family:'宋体'; padding:10px 0 20px 0; border-bottom:1px solid #b6b6b6;">
                	您选定的配送方式为: <font color="#ff4e00">申通快递</font>； &nbsp; &nbsp;您选定的支付方式为: <font color="#ff4e00">支付宝</font>； &nbsp; &nbsp;您的应付款金额为: <font color="#ff4e00">￥<%=cost %></font>
                </td>
              </tr>
              <tr>
                <td style="padding:20px 0 30px 0; font-family:'宋体';">
                	银行名称 收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。 <br />
                    注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。
                </td>
              </tr>
              <tr>
                <td>
                	<a href="${basePath }pages/index.jsp">首页</a> &nbsp; &nbsp; <a href="#">用户中心</a>
                </td>
              </tr>
            </table>        	
        </div>
        <!--Begin 银行卡支付 Begin -->


        
    </div>
	<!--End 第三步：提交订单 End--> 
    <%@include file="../public/foot.jsp"%>    
	<script type="text/javascript" src="${basePath }static/js/BuyCar_Two.js"></script>
	<script type="text/javascript" src="${basePath }static/js/n_nav.js"></script>   
    <script type="text/javascript" src="${basePath }static/js/num.js">
    	var jq = jQuery.noConflict();
    </script>     
    <script type="text/javascript" src="${basePath }static/js/shade.js"></script>
    
  
</html>
