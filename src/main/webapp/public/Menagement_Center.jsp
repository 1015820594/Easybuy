<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
   		<div class="m_left">
        	<div class="left_n">管理中心</div>
        	<c:if test="${!empty user }">
		            <div class="left_m">
		            	<div class="left_m_t t_bg1">订单中心</div>
		                <ul>
		                	<li><a href="${basePath }pages/Member_Order.jsp">我的订单</a></li>
		                	<c:if test="${user.type==1}">
		                    		<li><a href="${basePath }pages/Member_Orderlist.jsp">全部订单</a></li>
		                    </c:if>
		                </ul>
		            </div>
            </c:if>
            <c:if test="${!empty user && user.type==1}">
		            <div class="left_m">
		            	<div class="left_m_t t_bg2">会员中心</div>
		                <ul>
		                    <li><a href="${basePath }pages/Member_Userlist.jsp">用户列表</a></li>
		                </ul>
		            </div>
		            <div class="left_m">
		            	<div class="left_m_t t_bg3">商品管理</div>
		                <ul>
		                	<li><a href="${basePath }pages/Member_Classify.jsp">分类管理</a></li>
		                    <li><a href="${basePath }pages/Member_Prolist.jsp">商品列表</a></li>
		                </ul>
		            </div>
            </c:if>
            <div class="left_m">
            	<div class="left_m_t t_bg4">资讯中心</div>
                <ul>
                	<li><a href="Member_newsList.jsp">资讯列表</a></li>
                </ul>
            </div>
        </div>