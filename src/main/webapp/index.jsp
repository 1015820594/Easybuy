<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>易买网首页</title>
</head>
<body>  
<%@include file="public/head.jsp"%>
<!--Begin Menu Begin-->
<div class="menu_bg">
	<div class="menu">
    	<!--Begin 商品分类详情 Begin-->    
    	<div class="nav">
        	<div class="nav_t">全部商品分类</div>
            <div class="leftNav">
                <ul>      
                   
                </ul>                    
            </div>
        </div>  
        <!--End 商品分类详情 End-->                                                     
    	<ul class="menu_r">                                                                                                                                               
        	
            
        </ul>
        <div class="m_ad">中秋送好礼！</div>
    </div>
</div>
<!--End Menu End--> 
<div class="i_bg bg_color">
	<div class="i_ban_bg">
		<!--Begin Banner Begin-->
    	<div class="banner">    	
            <div class="top_slide_wrap">
                <ul class="slide_box bxslider">
                    <li><img src="${basePath }static/images/ban1.jpg" width="740" height="401" /></li>
                    <li><img src="${basePath }static/images/ban1.jpg" width="740" height="401" /></li> 
                    <li><img src="${basePath }static/images/ban1.jpg" width="740" height="401" /></li> 
                </ul>	
                <div class="op_btns clearfix">
                    <a href="#" class="op_btn op_prev"><span></span></a>
                    <a href="#" class="op_btn op_next"><span></span></a>
                </div>        
            </div>
        </div>
        <script type="text/javascript">
        jQuery.noConflict();
        (function ($) {
            $(".bxslider").bxSlider({
                auto:true,
                prevSelector:jq(".top_slide_wrap .op_prev")[0],nextSelector:jq(".top_slide_wrap .op_next")[0]
            });
        })(jQuery);
        </script>
        <!--End Banner End-->
        <div class="inews">
        	<div class="news_t">
            	<span class="fr"><a href="${baesPath }Member_newsList.jsp">更多 ></a></span>新闻资讯
            </div>
            <ul>
            	<c:forEach items="${pages.list}" var="news">
            		<li><span>[ 特惠 ]</span><a href="${baesPath }Member_newsList.jsp">${news.title }</a></li>
            	</c:forEach>
            </ul>
            <div class="charge_t">
            	话费充值<div class="ch_t_icon"></div>
            </div>
            <form>
            <table border="0" style="width:205px; margin-top:10px;" cellspacing="0" cellpadding="0">
              <tr height="35">
                <td width="33">号码</td>
                <td><input type="text" value="" class="c_ipt" /></td>
              </tr>
              <tr height="35">
                <td>面值</td>
                <td>
                	<select class="jj" name="city">
                      <option value="0" selected="selected">100元</option>
                      <option value="1">50元</option>
                      <option value="2">30元</option>
                      <option value="3">20元</option>
                      <option value="4">10元</option>
                    </select>
                    <span style="color:#ff4e00; font-size:14px;">￥99.5</span>
                </td>
              </tr>
              <tr height="35">
                <td colspan="2"><input type="submit" value="立即充值" class="c_btn" /></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
   
    <div class="content mar_20">
    	<img src="${basePath }static/images/mban_1.jpg" width="1200" height="110" />
    </div>
	<!--Begin 进口 生鲜 Begin-->
  	<c:forEach items="${list }" var="p" varStatus="sta">
    <div class="i_t mar_10">
    	<span class="floor_num">${sta.index+1 }F</span>
    	<span class="fl">${p.name }</span>  
    	<!-- 二级产品类别 -->              
        <span class="i_mores fr">
        <c:forEach items="${p.list }" var="pc">
        	&nbsp; <a href="${basePath }Classify.jsp?id=${pc.pcid}&list=List2">${pc.name }</a>&nbsp; |
        </c:forEach>
        </span>
    </div>
    <div class="content">
    	<div class="fresh_left">
        	<div class="fre_ban">
            	<div id="imgPlay1">
                    <ul class="imgs" id="actor1">
                        <li><a href="#"><img src="${basePath }static/images/fre_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="${basePath }static/images/fre_r.jpg" width="211" height="286" /></a></li>
                        <li><a href="#"><img src="${basePath }static/images/fre_r.jpg" width="211" height="286" /></a></li>
                    </ul>
                    <div class="prevf">上一张</div>
                    <div class="nextf">下一张</div> 
                </div>   
            </div>
            <div class="fresh_txt">
            	<div class="fresh_txt_c">
            		<!-- 二级产品类别 -->  
                	<c:forEach items="${p.list }" var="pc">
			        	<a href="${basePath }Classify.jsp?id=${pc.pcid}&list=List2">${pc.name }</a>&nbsp; &nbsp; 
			        </c:forEach>
                </div>
            </div>
        </div>
        <div class="fresh_mid">
        	<ul>
        		<!-- 一级产品类别下6件产品 --> 
        		<c:forEach items="${p.lp }" var="product">
            	<li>
                	<div class="name"><a href="#">${product.pname }</a></div>
                    <div class="price">
                    	<font>￥<span>${product.price }</span></font> &nbsp; 26R
                    </div>
                    <div class="img"><a href="ProductDetails.jsp?id=${product.pid}"><img src="${basePath }static/files/${product.fileName}" width="185" height="155" /></a></div>
                </li> 
                </c:forEach>                
            </ul>
        </div>
        <div class="fresh_right">
        	<ul>
            	<li><a href="#"><img src="${basePath }static/images/fre_b1.jpg" width="260" height="220" /></a></li>
                <li><a href="#"><img src="${basePath }static/images/fre_b2.jpg" width="260" height="220" /></a></li>
            </ul>
        </div>
    </div> 
    </c:forEach>   
    <!--End 进口 生鲜 End-->
    <!--Begin 猜你喜欢 Begin-->
    <div class="i_t mar_10">
    	<span class="fl">猜你喜欢</span>
    </div>    
    <div class="like">        	
        <div id="featureContainer1">
            <div id="feature1">
                <div id="block1">
                    <div id="botton-scroll1">
                        <ul class="featureUL">
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="${basePath }static/images/hot1.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>德国进口</h2>
                                        德亚全脂纯牛奶200ml*48盒
                                        </a>
                                    </div>
                                    <div class="price">
                                        <font>￥<span>189</span></font> &nbsp; 26R
                                    </div>
                                </div>
                            </li>
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="${basePath }static/images/hot2.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>iphone 6S</h2>
                                        Apple/苹果 iPhone 6s Plus公开版
                                        </a>
                                    </div>
                                    <div class="price">
                                        <font>￥<span>5288</span></font> &nbsp; 25R
                                    </div>
                                </div>
                            </li>
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="${basePath }static/images/hot3.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>倩碧特惠组合套装</h2>
                                        倩碧补水组合套装8折促销
                                        </a>
                                    </div>
                                    <div class="price">
                                        <font>￥<span>368</span></font> &nbsp; 18R
                                    </div>
                                </div>
                            </li>
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="${basePath }static/images/hot4.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>品利特级橄榄油</h2>
                                        750ml*4瓶装组合 西班牙原装进口
                                        </a>
                                    </div>
                                    <div class="price">
                                        <font>￥<span>280</span></font> &nbsp; 30R
                                    </div>
                                </div>
                            </li>
                            <li class="featureBox">
                                <div class="box">
                                    <div class="imgbg">
                                        <a href="#"><img src="${basePath }static/images/hot4.jpg" width="160" height="136" /></a>
                                    </div>                                        
                                    <div class="name">
                                        <a href="#">
                                        <h2>品利特级橄榄油</h2>
                                        750ml*4瓶装组合 西班牙原装进口
                                        </a>
                                    </div>
                                    <div class="price">
                                        <font>￥<span>280</span></font> &nbsp; 30R
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <a class="l_prev" href="javascript:void();">Previous</a>
                <a class="l_next" href="javascript:void();">Next</a>
            </div>
        </div>
    </div>
    <!--End 猜你喜欢 End-->
    
<%@include file="public/foot.jsp"%>
</div>

<script type="text/javascript" src="${basePath }static/js/index.js"></script>
</body>



</html>


