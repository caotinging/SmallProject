<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/css/Style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function addProduct() {
		window.location.href = "${pageContext.request.contextPath}/admin/product/add.jsp";
	}
	function out(obj) {
		obj.style.backgroundColor = '#F5FAFE'
	}
	function over(obj) {
		obj.style.backgroundColor = 'white';
	}
	function delProduct(pid) {
		if(confirm("确认删除？")) {
			$.post(
				"${pageContext.request.contextPath}/AdminServlet",
				{"method": "delProduct", "pid": pid}
			);
		}
	}

	$.ajax({
		"asycn" : true,
		"url" : "${pageContext.request.contextPath }/AdminServlet",
		"type" : "POST",
		"data" : {
			"method" : "findAllProduct"
		},
		"dataType" : "json",
		"success" : function(productList) {
			var content = "<tr style='FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3'>"+
				"<td align='center' width='18%'>序号</td>"+
				"<td align='center' width='17%'>商品图片</td>"+
				"<td align='center' width='17%'>商品名称</td>"+
				"<td align='center' width='17%'>商品价格</td>"+
				"<td align='center' width='17%'>是否热门</td>"+
				"<td width='7%' align='center'>编辑</td>"+
				"<td width='7%' align='center'>删除</td>"+
			"</tr>";
			
			for(var i=0; i<productList.length; i++) {
				content+="<tr onmouseover='over(this)' onmouseout='out(this)'>"+
					"<td style='CURSOR: hand; HEIGHT: 22px' align='center' width='18%'>"+(i+1)+"</td>"+
					"<td style='CURSOR: hand; HEIGHT: 22px' align='center' width='17%'><img width='40' height='45' src='${pageContext.request.contextPath}/"+productList[i].pimage+"'></td>"+
					"<td style='CURSOR: hand; HEIGHT: 22px' align='center' width='17%'>"+productList[i].pname+"</td>"+
					"<td style='CURSOR: hand; HEIGHT: 22px' align='center' width='17%'>"+productList[i].shop_price+"</td>"+
					"<td style='CURSOR: hand; HEIGHT: 22px' align='center' width='17%'>"+(productList[i].is_hot==0?"否":"是")+"</td>"+
					"<td align='center' style='HEIGHT: 22px'><a href='${ pageContext.request.contextPath }/admin/product/edit.jsp?pid="+productList[i].pid+"'>"+
						"<img src='${pageContext.request.contextPath}/images/i_edit.gif' border='0' style='CURSOR: hand'>"+
					"</a></td>"+
					"<td align='center' style='HEIGHT: 22px'><a href='javascript:void(0);' onclick='delProduct('"+productList[i].pid+"')'>"+
						"<img src='${pageContext.request.contextPath}/images/i_del.gif' width='16' height='16' border='0' style='CURSOR: hand'>"+
					"</a></td>"+
				"</tr>";
			}
			$("#productListTable").html(content);
		}
	});
</script>
</HEAD>
<body>
	<br>
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/user/list.jsp"
		method="post">
		<table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>商品列表</strong>
					</TD>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="添加"
							class="button_add" onclick="addProduct()">
							&#28155;&#21152;</button>

					</td>
				</tr>
				<tr>
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table id="productListTable" style=" cellspacing: 0px; cellpadding: 1px; rules: all; 
							bordercolor: gray; border: 1px; BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; 
							WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

