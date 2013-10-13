<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/screen.css" type="text/css"
	media="screen" />
<title>로그인</title>
<script type="text/javascript">
	
	function login() {
		var form = document.getElementById("LoginForm");
		//TODO
		form.submit();
	}
	

	function goback() {
		history.back();
	}
	
</script>
</head>
<body>
<body>

	<div id="wrap">

		<div id="container">
			<div id="content" style="height: 800px;">

				<!-- 본문 시작 -->
				<h2>로그인이 필요합니다.</h2>
				<form id="LoginForm" action="Login.action" method="post"
					onsubmit="login();return false;">
					<s:fielderror/>
					<table>
						<tr>
							<td style="width: 200px;">email(수정불가)</td>
							<td style="width: 390px"><input type="text" name="email" value="<s:property value="email"/>" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>비밀번호(Password)</td>
							<td><input type="password" name="passwd" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
							<input type="button" value="로그인" onclick="javascript:location.href='EditAction?email=<s:property value="email"/>'"/> 
							<input type="button" value="취소" onclick="goback()" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>


</body>
</body>
</html>