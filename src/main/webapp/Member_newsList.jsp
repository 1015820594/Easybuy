<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新闻资讯页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
<%@include file="public/head.jsp"%>
<div class="i_bg bg_color">
    <!--Begin 用户中心 Begin -->
	<div class="m_content">
   		<%@include file="../public/Menagement_Center.jsp"%>
		<div class="m_right">
            <p></p>		
            
			<div class="mem_t">
            	资讯列表
            	<c:if test="${!empty user && user.type==1}">
            		<a href="${basePath}pages/Member_NewsAdd.jsp" class="fr">添加资讯</a>
            	</c:if>
            </div>
            
            <table border="1" class="mem_tab" style=" width:870px; margin-top:10px;" cellspacing="0" cellpadding="0">
              <tr>
                <td class="th_bg1"  colspan="3">文章标题</td>
                <td class="th_bg1"  colspan="3">创建时间</td>
              </tr>
            </table>
        </div>
    </div>
	<!--End 用户中心 End--> 
   <%@include file="public/foot.jsp"%>
</div>
 <script type="text/javascript" src="${basePath }static/js/Member_newsList.js"></script>
  </body>
</html>
