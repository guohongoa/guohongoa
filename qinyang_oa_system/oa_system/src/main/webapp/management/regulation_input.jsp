<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title></title>
</head>
<body>
	<form action="../regulation_insert.do" method="post" id="regulationform">
		制度所属部门：<input type="text" name="regulation_department"/>
		制度标题：<input type="text" name="regulation_title"/>
		制度内容：<input type="text" name="regulation_content"/>
		制度资源url：<input type="text" name="regulation_resourceurl">
		<input type="submit" value="添加制度" />&nbsp;&nbsp;<input type="reset" value="重置">
	</form>
	<a href="../index.jsp">返回首页</a>
</body>
</html>