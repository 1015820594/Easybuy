<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
<%
if(session.getAttribute("list")==null){
	response.sendRedirect(basePath+"index");
}
 %>
<script type="text/javascript">
  var basePath = "${basePath}";
  var userId = "${user.uid}";
  var loginName = "${user.loginName}";
  var userName = "${user.userName}";
</script>
  	<base href="${basePath }"/>
	<link type="text/css" rel="stylesheet" href="${basePath }static/css/style.css" />
    <script type="text/javascript" src="${basePath }static/js/jquery-1.8.2.min.js"></script>
	<script type="text/javascript" src="${basePath }static/js/jquery.bxslider_e88acd1b.js"></script>
	<script type="text/javascript" src="${basePath }static/js/select.js"></script>
	<script type="text/javascript" src="${basePath }static/js/lrscroll.js"></script>
    <script type="text/javascript" src="${basePath }static/js/iban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/fban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/f_ban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/mban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/bban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/hban.js"></script>
    <script type="text/javascript" src="${basePath }static/js/tban.js"></script>
	<script type="text/javascript" src="${basePath }static/js/lrscroll_1.js"></script>
	<script type="text/javascript" src="${basePath }static/js/head.js"></script>
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
    	<!--Begin 所在收货地区 Begin-->
    	<span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span id="s_city_check">四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
        	<!-- 未登录 -->
        	<c:if test="${empty user}">
        			<span class="fl">你好，请<a href="${basePath }Login.jsp">登录</a>&nbsp; <a href="${basePath }Regist.jsp" style="color:#ff4e00;">免费注册</a>
        	</c:if>
        	<!-- END 未登录 END -->
        	<!-- 已登录 -->
        	<c:if test="${!empty user}">
        			<span class="fl">欢迎您! ${user.userName}&nbsp;|&nbsp;<a href="${basePath }/pages/Member_Order.jsp">我的订单</a>&nbsp;|&nbsp;<a href="${basePath }Quit">注销</a></span>
        	</c:if>
        	<!-- END 已登录  END -->
    </div>
</div>
<div class="top">
    <div class="logo"><a href="${basePath }pages/index.jsp"><img src="static/images/logo.png" /></a></div>
    <div class="search">
    	<form>
        	<input type="text" value="" class="s_ipt" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>                      
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div>
    <div class="i_car">
    	<div class="car_t">购物车 <span></span> </div>
        <div class="car_bg">
       		<!--Begin 购物车未登录 Begin-->
       		<c:if test="${empty user}">
        	<div class="un_login">还未登录！<a href="${basePath }Login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            </c:if>
            <!--End 购物车未登录 End-->
            
            <!--Begin 购物车已登录 Begin-->
            <c:if test="${!empty user}">
		            <ul class="cars">
		            	
		            </ul>
		            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span></span></div>
		            <div class="price_a"><a href="${basePath }pages/BuyCar.jsp">去购物车结算</a></div>
            </c:if>
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>
<!--End Header End--> 
