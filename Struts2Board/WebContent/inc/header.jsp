<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<h1 style="float: left;width: 150px;"><a href="../"><img src="../images/ci.gif" alt="java-school logo" /></a></h1>
<div id="memberMenu" style="float: right;position: relative;top: 7px;">
<s:if test="#session.user == null">
	<input type="button" value="로그인" onclick="location.href='../users/loginForm.action'" />
	<input type="button" value="회원가입" onclick="location.href='../users/signUpForm.action'" />
</s:if>
<s:else>
	<input type="button" value="로그아웃" onclick="location.href='../users/logout.action'" />
	<input type="button" value="내정보수정" onclick="location.href='../users/editAccountForm.action'" />
</s:else>	
</div>