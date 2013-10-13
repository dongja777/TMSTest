<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="내정보수정" />
<meta name="Description" content="내정보수정" />
<link rel="stylesheet" href="../css/screen.css" type="text/css" media="screen" />
<title>회원</title>
<script type="text/javascript">
//<![CDATA[
	function signup() {
		var form = document.getElementById("EditForm");
		//유효성 검사로직 추가
		form.submit();
	}        
	
	function goback() {
		history.back();
	}
//]]>
</script>           
</head>
<body>

<div id="wrap">

	<div id="container">
		<div id="content" style="height: 800px;">
<!-- 본문 시작 -->
<h1>내정보수정</h1>


				<!-- 본문 시작 -->
				<form id="EditForm" action="EditAccountAction.action" method="post"
					onsubmit="signup();return false;">
					<s:fielderror />
					<table>
						<tr>
							<td style="width: 200px;">이름(Full Name)</td>
							<td style="width: 390px"><input type="text" name="name"
								style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>비밀번호(Password)</td>
							<td><input type="password" name="passwd" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>비밀번호 확인(Confirm)</td>
							<td><input type="password" name="confirm"
								style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>Email(수정불가)</td>
							<td><input type="text" name="email" value="<s:property value="email"/>" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td>손전화(Mobile)</td>
							<td><input type="text" name="mobile" style="width: 99%;" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="확인"/><input type="button" value="취소" onclick="goback()" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>

</body>

</html>