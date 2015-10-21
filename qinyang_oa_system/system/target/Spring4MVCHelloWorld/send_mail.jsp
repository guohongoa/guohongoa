<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<html>
<body>
	<h2>Spring MVC and List Example</h2>

	<c:if test="${not empty mail_info_list}">

		<ul>
			<c:forEach var="mail_info" items="${mail_info_list}">
				<li>${mail_info.mail_sender}</li>
			</c:forEach>
		</ul>

	</c:if>
</body>
</html>