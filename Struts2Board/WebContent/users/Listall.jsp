<%@page import="com.sun.xml.internal.stream.buffer.sax.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="Keywords" content="회원리스트" />
<meta name="Description" content="회원리스트" />
<link rel="stylesheet" href="../css/screen.css" type="text/css"
	media="screen" />

<title>회원가입</title>


<script type="text/javascript">
	//<![CDATA[
	function check() {
		var form = document.getElementById("ListForm");
		//TODO
		form.submit();
	}
	
	
	//]]>
</script>
</head>
<body>

	<div id="wrap">


		<div id="container">
			<div id="content" style="height: 800px;">				

				<!-- 본문 시작 -->
				<h1>회원목록</h1>
				<form id="ListForm" action="Listall.action" method="post"
					onsubmit="check();return false;">
					<s:fielderror />
					<table>
						<tr>
							<td style="width: 100px" align="center">이름(Full Name)</td>
							<td style="width: 220px" align="center">Email</td>
							<td style="width: 200px" align="center">손전화(Mobile)</td>
						</tr>
						<s:iterator value="user">
						<tr>
							<td style="width: 150px" align="center"><s:property value="name"/>
								</td>
							<td style="width: 270px" align="center"><s:property value="email"/>
								</td>
							<td style="width: 240px" align="center"><s:property value="mobile"/>
								</td>
							<td style="width: 80px" align="center"><a href="Login?email=<s:property value="email"/>">edit</a></td>
							<td style="width: 80px" align="center"><a href="DeleteAction?email=<s:property value="email"/>">delete</a></td>
						</tr>
						</s:iterator>

					</table>
					<div style="text-align: center; padding-bottom: 15px;">
						<input type="submit" value="회원가입" />
					</div>
				</form>
				<!--  본문 끝 -->

			</div>
			<!-- content 끝 -->
		</div>
		<!--  container 끝 -->



	</div>

</body>
</html>