<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("basePath", basePath);
%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册页面</title>
</head>
<body>  
<!--Begin Header Begin-->
<div class="soubg">
	<div class="sou">
        <span class="fr">
        	<span class="fl">你好，请<a href="${basePath }/Login.jsp">登录</a>&nbsp; <a href="${basePath }/Regist.jsp" style="color:#ff4e00;">免费注册</a>&nbsp; </span>
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
        <div class="logo"><a href="pages/index.jsp"><img src="${basePath}static/images/logo.png" /></a></div>
    </div>
	<div class="regist">
    	<div class="log_img"><img src="${basePath }static/images/l_img.png" width="611" height="425" /></div>
		<div class="reg_c">
        	<form action="${basePath }pages/index.jsp" method="post" id="form">
            <table border="0" style="width:420px; font-size:14px; margin-top:20px;" cellspacing="0" cellpadding="0">
              <tr height="50" valign="top">
              	<td width="95">&nbsp;</td>
                <td>
                	<span class="fl" style="font-size:24px;">注册</span>
                    <span class="fr">已有商城账号，<a href="${basePath }/Login.jsp" style="color:#ff4e00;">我要登录</a></span>
                </td>
              </tr>
              <tr height="50" >
                <td align="right"><font color="#ff4e00">*</font>&nbsp;用户名 &nbsp;</td>
                <td>
                <input  type="text" value="" class="l_user" name="loginName"id="loginName"/>
                </td>
              </tr>
              <tr><td></td><td><div style="height: 16px;color:red"></div></td></tr>
              
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;密码 &nbsp;</td>
                <td><input type="password" value="" class="l_pwd" name="password"id="password1"/>
                   </td>
                </tr>
                 <tr><td></td><td><div style="height: 16px ;color:red"></div></td></tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;确认密码 &nbsp;</td>
                <td><input type="password" value="" class="l_pwd" name="repassword"id="password2"/>
                   </td>
                </tr>
                 <tr><td></td><td><div style="height: 16px ;color:red"></div></td></tr>
               <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;真实姓名 &nbsp;</td>
                <td><input type="text" value="" class="l_userName" name="userName"id="xm"/>
                </td>
              </tr>
                <tr><td></td><td><div style="height: 16px;color:red"></div></td></tr>
              <tr height="50">
                <td align="right"><font color="#ff4e00">*</font>&nbsp;性别 &nbsp;</td>
                <td><input type="radio" value="1" class="l_sex" name="sex" checked/>男
                <input type="radio" value="0" class="l_sex" name="sex"/>女
                <div></div></td>
              </tr>
               <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp; 身份证号 &nbsp;</td>
                 <td><input type="text" value="" class="l_identityCode" name="identityCode"id="sfz"/>
                 </td>
                </tr>
                 <tr><td></td><td><div style="height: 16px ;color:red"></div></td></tr> 
              <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp;邮箱 &nbsp;</td>
                <td><input type="text" value="" class="l_email" name="email"id="youxiang"/>
               </td>
                </tr>
                 <tr><td></td><td><div style="height: 16px ;color:red"></div></td></tr> 
             
              <tr height="50">
                <td align="right"><font color="#ff4e00"></font>&nbsp;手机 &nbsp;</td>
                <td><input type="text" value="" class="l_tel" name="tel" id="shouji"/>
                 </td>
                </tr>
                <tr><td></td><td><div style="height: 16px ;color:red"></div></td></tr> 
              <tr height="60">
              	<td>&nbsp;</td>
                <td><input type="button" value="立即注册" class="log_btn" /></td>
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
        <img src="${basePath}static/images/b_1.gif" width="98" height="33" /><img src="${basePath}static/images/b_2.gif" width="98" height="33" /><img src="${basePath}static/images/b_3.gif" width="98" height="33" /><img src="${basePath}static/images/b_4.gif" width="98" height="33" /><img src="images/b_5.gif" width="98" height="33" /><img src="${basePath}static/images/b_6.gif" width="98" height="33" />
    </div>    	
</div>
<!--End Footer End -->    
<script type="text/javascript" src="${basePath }static/js/zhuce.js"></script>
</body>


</html>
