<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.6000.16809" name=GENERATOR>
<STYLE type=text/css>
BODY {
	FONT-SIZE: 12px;
	COLOR: #ffffff;
	FONT-FAMILY: 宋体
}

TD {
	FONT-SIZE: 12px;
	COLOR: #ffffff;
	FONT-FAMILY: 宋体
}
</STYLE>

<script type="text/javascript">
	window.onload=function() {
		if(window.parent != window) {
			window.parent.location.href="${pageContext.request.contextPath}/login.jsp"
		}
	};
</script>

</HEAD>
<BODY>
	<FORM id=form1 name=form1 method="post" action="userAction_login">

		<DIV id=UpdatePanel1>
			<DIV id=div1
				style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>
			<DIV id=div2
				style="LEFT: 0px; POSITION: absolute; TOP: 0px; BACKGROUND-COLOR: #0066ff"></DIV>


			<DIV>&nbsp;&nbsp;</DIV>
			<DIV>
				<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
					<TBODY>
						<TR>
							<TD style="HEIGHT: 105px"><IMG src="images/login_1.gif"
								border=0></TD>
						</TR>
						<TR>
							<TD background=images/login_2.jpg height=300>
								<TABLE height=300 cellPadding=0 width=900 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=35></TD>
										</TR>
										<TR>
											<TD width=360></TD>
											<TD>
												<TABLE cellSpacing=0 cellPadding=2 border=0>
													<TBODY>
														<TR>
															<TD style="HEIGHT: 28px" width=80>登 录 名：</TD>
															<TD style="HEIGHT: 28px" width=150><INPUT id=txtName
																style="WIDTH: 130px" name="user_code" type="text"></TD>
															<TD style="HEIGHT: 28px" width=370><SPAN
																id=RequiredFieldValidator3
																style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入登录名</SPAN></TD>
														</TR>
														<TR>
															<TD style="HEIGHT: 28px">登录密码：</TD>
															<TD style="HEIGHT: 28px"><INPUT id=txtPwd
																style="WIDTH: 130px" type="password" name="user_password"></TD>
															<TD style="HEIGHT: 28px"><SPAN
																id=RequiredFieldValidator4
																style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入密码</SPAN></TD>
														</TR>
														<TR>
															<TD style="HEIGHT: 28px">验证码：</TD>
															<TD style="HEIGHT: 28px"><INPUT id=txtcode
																style="WIDTH: 130px"></TD>
															<TD style="HEIGHT: 28px">&nbsp;</TD>
														</TR>
														<TR>
															<TD style="HEIGHT: 18px" colspan="2">
																<span style="color: red;"><s:property value="exception.message"/></span>
															</TD>
														</TR>
														<TR>
															<TD></TD>
															<TD><INPUT id=btn
																style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
																type=image src="images/login_button.gif" name=btn>
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD><IMG src="images/login_3.jpg" border=0></TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
		</DIV>
	</FORM>
	<s:debug></s:debug>
</BODY>
</HTML>