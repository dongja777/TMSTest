<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="비밀번호 변경" />
<meta name="Description" content="비빌번호 변경" />
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" />
<title>BBS</title>
<script type="text/javascript">
//<![CDATA[
	function check() {
		//var form = document.getElementById("signUpForm");
		//TODO 유효성 검사로직 추가
		form.submit();
	}        
//]]>
</script>           
</head>
<body>

<div id="wrap">

	<div id="header">
		<%@ include file="../inc/header.jsp" %>
	</div>

	<div id="container">
		<div id="content" style="height: 800px;">
			<div id="url-navi">BBS</div>
<!-- 본문 시작 -->
<h1>비빌번호 변경</h1>
${session.user.name}님은 로그인 상태입니다.<br />
이메일 ${session.user.email}<br />
손전화 ${session.user.mobile}<br />
<s:form id="changePasswdForm" action="changePasswd.action" method="post" onsubmit="check();return false;">
<s:password name="passwd" label="변경 비밀번호(Password)"  />
<s:password name="confirm" label="변경 비밀번호 확인(Confirm)"  />
<s:submit />
</s:form>
<!--  본문 끝 -->

		</div><!-- content 끝 -->
	</div><!--  container 끝 -->
	
	<div id="sidebar">
		<%@ include file="loginUsers-menu.jsp" %>
	</div>
	
	<div id="extra">
		<%@ include file="../inc/extra.jsp" %>
	</div>

	<div id="footer">
		<%@ include file="../inc/footer.jsp" %>
	</div>

</div>

</body>
</html>