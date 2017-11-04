<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css"
	rel="stylesheet" type="text/css" />
<link rel="StyleSheet"
	href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
	<table
		style="width: 100px; border: 0px; cellspacing: 0px; cellpadding: 0px;">
		<tr>
			<td style="height: 12px;"></td>
		</tr>
	</table>
	<table style="width: 100%; border: 0px;">
		<tr>
			<td>
				<div class="dtree">

					<a href="javascript: d.openAll();">展开所有</a> | <a
						href="javascript: d.closeAll();">关闭所有</a>

					<script type="text/javascript"
						src="${pageContext.request.contextPath}/js/dtree.js"></script>
					<script type="text/javascript">
					
						d = new dTree('d');
						d.add('01', -1, '系统菜单树');
						d.add('0102', '01', '分类管理', '', '', 'mainFrame');
						d.add('010201', '0102', '分类管理', '${pageContext.request.contextPath}/admin/category/list.jsp', '', 'mainFrame');
						d.add('0104', '01', '商品管理');
						d.add('010401', '0104', '商品管理', '${pageContext.request.contextPath}/admin/product/list.jsp', '', 'mainFrame');
						d.add('0105', '01', '订单管理');
						d.add('010501', '0105', '订单管理', '${pageContext.request.contextPath}/AdminServlet?method=findAllOrders', '', 'mainFrame');
						document.write(d);
					</script>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
