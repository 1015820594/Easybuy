<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>登录页面</title>
<script type="text/javascript">
  var basePath = "${basePath}";
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
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="${basePath }/Login.jsp">登录</a>&nbsp; <a href="Regist.jsp" style="color:#ff4e00;">免费注册</a> </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="${basePath }static/images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<!--End Header End--> 
<!--Begin Login Begin-->
<div class="log_bg">	
    <div class="top">
        <div class="logo"><a href="${basePath }pages/index.jsp"><img src="${basePath }static/images/logo.png" /></a></div>
    </div>
	<div class="login">
    	<div class="log_img"><img src="${basePath }static/images/l_img.png" width="611" height="425" /></div>
		<div class="log_c">
        	<form action="pages/index.jsp" id="form" method="post" >
            <table border="0" style="width:370px; font-size:14px; margin-top:30px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="55">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">登录</span>
                    <span class="fr">还没有商城账号，<a href="Regist.jsp" style="color:#ff4e00;">立即注册</a></span>
                </td>
              </tr>
              <tr height="70">
                <td>用户名</td>
                <td><input type="text" value="" class="l_user" name="loginName" id="loginName"/></td>
              </tr>
              <tr height="70">
                <td>密&nbsp; &nbsp; 码</td>
                <td><input type="password" value="" class="l_pwd" name="password" id="password"/></td>
              </tr>
              <tr>
              	<td>&nbsp;</td>
                <td style="font-size:12px; padding-top:20px;">
                	<span style="font-family:'宋体';" class="fl">
                    	<label class="r_rad"><input type="checkbox" /></label><label class="r_txt">请保存我这次的登录信息</label>
                    </span>
                    <span class="fr"><a href="#" style="color:#ff4e00;">忘记密码</a></span>
                </td>
              </tr>
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input type="button" value="登录" class="log_btn" /></td>
              </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!--End Login End--> 
<!--Begin Footer Begin-->
<div class="btmbg">
    <div class="btm">
        备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
        <img src="${basePath }static/images/b_1.gif" width="98" height="33" /><img src="${basePath }static/images/b_2.gif" width="98" height="33" /><img src="${basePath }static/images/b_3.gif" width="98" height="33" /><img src="${basePath }static/images/b_4.gif" width="98" height="33" /><img src="${basePath }static/images/b_5.gif" width="98" height="33" /><img src="${basePath }static/images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--End Footer End -->    
<script type="text/javascript" src="${basePath }static/js/login.js"></script>
</body>

</html>
