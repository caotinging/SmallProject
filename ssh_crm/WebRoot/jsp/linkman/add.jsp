﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE><s:property value="#linkman==null?'添加':'修改'"/>联系人</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript">
	function selectCustomer(){
		window.open('${pageContext.request.contextPath}/customerAction_custList?select=true','','width=600,height=300')
	}
</script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
		<TBODY>
			<TR>
				<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
					border=0></TD>
				<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
					 height=20></TD>
				<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
					border=0></TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
		<TBODY>
			<TR>
				<TD width=15 background="${pageContext.request.contextPath }/images/new_022.jpg"><IMG
					src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
				<TD vAlign=top width="100%" bgColor=#ffffff>
					<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
						<TR>
							<TD class=manageHead>当前位置：联系人管理 &gt; <s:property value="#linkman==null?'添加':'修改'"/>联系人</TD>
						</TR>
						<TR>
							<TD height=2></TD>
						</TR>
					</TABLE>
					<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/linkManAction_saveOrUpdeteLinkMan" method=post>
						<input type="hidden" name="lkm_id" value="${linkman.lkm_id }" />
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<tr>
								<td>所属客户：</td>
								<td>
									<input value="${linkman.customer.cust_name }" type="text" id="cust_name_Btn" name="cust_name" style="WIDTH: 180px"/>
									<input type="hidden" id="cust_id_Hbtn" name="customer.cust_id" value="${linkman.customer.cust_id }"/>
								</td>
								<td><input type="button" value="选择客户" onclick="selectCustomer()"/></td>
							</tr>
							<TR>
								<td>联系人名称：</td>
								<td>
									<INPUT value="${linkman.lkm_name }" class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="lkm_name">
								</td>
								<td>联系人性别：</td>
								<td>
									<input type="radio" value="0" <s:property value="#linkman.lkm_gender=='0'?'checked':''"/> name="lkm_gender">男
									<input type="radio" value="1" <s:property value="#linkman.lkm_gender=='1'?'checked':''"/> name="lkm_gender">女
								</td>
							</TR>
							<TR>
								<td>联系人办公电话 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="lkm_phone" value="${linkman.lkm_phone }">
								</td>
								<td>联系人手机 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="lkm_mobile" value="${linkman.lkm_mobile }">
								</td>
							</TR>
							<tr>
								<td rowspan=2>
									<INPUT class=button id=sButton2 type=submit value="保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
					</FORM>
				</TD>
				<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
		<TBODY>
			<TR>
				<TD width=15>
					<IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0>
				</TD>
				<TD align=middle width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
				<TD width=15>
					<IMG src="${pageContext.request.contextPath }/images/new_026.jpg" border=0>
				</TD>
			</TR>
		</TBODY>
	</TABLE>
	<s:debug></s:debug>
</BODY>
</HTML>
